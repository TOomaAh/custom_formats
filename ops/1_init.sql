-- ============================================================================
-- PCD 2.0 Schema
-- Schema deduced from 0.rosettarr.sql (data import)
-- ============================================================================

PRAGMA foreign_keys = ON;

-- ============================================================================
-- CORE ENTITIES
-- ============================================================================

-- Tags applied to regular expressions, custom formats and quality profiles
CREATE TABLE IF NOT EXISTS tags (
    name TEXT PRIMARY KEY
);

-- Languages (populated by 1.languages.sql)
CREATE TABLE IF NOT EXISTS languages (
    name TEXT PRIMARY KEY
);

-- Qualities (populated by 2.qualities.sql)
CREATE TABLE IF NOT EXISTS qualities (
    name TEXT PRIMARY KEY
);

-- Mapping between a PCD quality and the *arr API quality name
CREATE TABLE IF NOT EXISTS quality_api_mappings (
    arr_type     TEXT NOT NULL CHECK (arr_type IN ('radarr', 'sonarr')),
    api_name     TEXT NOT NULL,
    quality_name TEXT NOT NULL,
    PRIMARY KEY (arr_type, api_name),
    FOREIGN KEY (quality_name) REFERENCES qualities (name) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_quality_api_mappings_quality
    ON quality_api_mappings (quality_name);

-- Regular expressions reused by custom format conditions
CREATE TABLE IF NOT EXISTS regular_expressions (
    name        TEXT PRIMARY KEY,
    pattern     TEXT NOT NULL,
    description TEXT NOT NULL DEFAULT ''
);

-- Custom formats
CREATE TABLE IF NOT EXISTS custom_formats (
    name        TEXT PRIMARY KEY,
    description TEXT NOT NULL DEFAULT ''
);

-- ============================================================================
-- DEPENDENT ENTITIES
-- ============================================================================

CREATE TABLE IF NOT EXISTS quality_profiles (
    name                         TEXT PRIMARY KEY,
    description                  TEXT NOT NULL DEFAULT '',
    upgrades_allowed             INTEGER NOT NULL DEFAULT 1 CHECK (upgrades_allowed IN (0, 1)),
    minimum_custom_format_score  INTEGER NOT NULL DEFAULT 0,
    upgrade_until_score          INTEGER NOT NULL DEFAULT 0,
    upgrade_score_increment      INTEGER NOT NULL DEFAULT 1
);

-- Quality groups are scoped to a single quality profile
CREATE TABLE IF NOT EXISTS quality_groups (
    quality_profile_name TEXT NOT NULL,
    name                 TEXT NOT NULL,
    PRIMARY KEY (quality_profile_name, name),
    FOREIGN KEY (quality_profile_name) REFERENCES quality_profiles (name) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Conditions attached to a custom format.
-- type: indexer_flag | language | quality_modifier | release_group |
--       release_title | release_type | resolution | source
CREATE TABLE IF NOT EXISTS custom_format_conditions (
    custom_format_name TEXT NOT NULL,
    name               TEXT NOT NULL,
    type               TEXT NOT NULL,
    arr_type           TEXT NOT NULL DEFAULT 'all' CHECK (arr_type IN ('all', 'radarr', 'sonarr')),
    negate             INTEGER NOT NULL DEFAULT 0 CHECK (negate IN (0, 1)),
    required           INTEGER NOT NULL DEFAULT 0 CHECK (required IN (0, 1)),
    PRIMARY KEY (custom_format_name, name),
    FOREIGN KEY (custom_format_name) REFERENCES custom_formats (name) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_custom_format_conditions_type
    ON custom_format_conditions (type);

-- ============================================================================
-- JUNCTION TABLES
-- ============================================================================

CREATE TABLE IF NOT EXISTS regular_expression_tags (
    regular_expression_name TEXT NOT NULL,
    tag_name                TEXT NOT NULL,
    PRIMARY KEY (regular_expression_name, tag_name),
    FOREIGN KEY (regular_expression_name) REFERENCES regular_expressions (name) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (tag_name) REFERENCES tags (name) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_regular_expression_tags_tag
    ON regular_expression_tags (tag_name);

CREATE TABLE IF NOT EXISTS custom_format_tags (
    custom_format_name TEXT NOT NULL,
    tag_name           TEXT NOT NULL,
    PRIMARY KEY (custom_format_name, tag_name),
    FOREIGN KEY (custom_format_name) REFERENCES custom_formats (name) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (tag_name) REFERENCES tags (name) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_custom_format_tags_tag
    ON custom_format_tags (tag_name);

CREATE TABLE IF NOT EXISTS quality_group_members (
    quality_profile_name TEXT NOT NULL,
    quality_group_name   TEXT NOT NULL,
    quality_name         TEXT NOT NULL,
    PRIMARY KEY (quality_profile_name, quality_group_name, quality_name),
    FOREIGN KEY (quality_profile_name, quality_group_name)
        REFERENCES quality_groups (quality_profile_name, name) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (quality_name) REFERENCES qualities (name) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_quality_group_members_quality
    ON quality_group_members (quality_name);

CREATE TABLE IF NOT EXISTS quality_profile_tags (
    quality_profile_name TEXT NOT NULL,
    tag_name             TEXT NOT NULL,
    PRIMARY KEY (quality_profile_name, tag_name),
    FOREIGN KEY (quality_profile_name) REFERENCES quality_profiles (name) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (tag_name) REFERENCES tags (name) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_quality_profile_tags_tag
    ON quality_profile_tags (tag_name);

CREATE TABLE IF NOT EXISTS quality_profile_languages (
    quality_profile_name TEXT NOT NULL,
    language_name        TEXT NOT NULL,
    type                 TEXT NOT NULL,
    PRIMARY KEY (quality_profile_name, language_name),
    FOREIGN KEY (quality_profile_name) REFERENCES quality_profiles (name) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (language_name) REFERENCES languages (name) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_quality_profile_languages_language
    ON quality_profile_languages (language_name);

CREATE TABLE IF NOT EXISTS quality_profile_custom_formats (
    quality_profile_name TEXT NOT NULL,
    custom_format_name   TEXT NOT NULL,
    arr_type             TEXT NOT NULL DEFAULT 'all' CHECK (arr_type IN ('all', 'radarr', 'sonarr')),
    score                INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY (quality_profile_name, custom_format_name, arr_type),
    FOREIGN KEY (quality_profile_name) REFERENCES quality_profiles (name) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (custom_format_name) REFERENCES custom_formats (name) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_quality_profile_custom_formats_format
    ON quality_profile_custom_formats (custom_format_name);

-- A row targets either a quality group or a single quality, never both
CREATE TABLE IF NOT EXISTS quality_profile_qualities (
    quality_profile_name TEXT NOT NULL,
    quality_group_name   TEXT,
    quality_name         TEXT,
    position             INTEGER NOT NULL,
    upgrade_until        INTEGER NOT NULL DEFAULT 0 CHECK (upgrade_until IN (0, 1)),
    FOREIGN KEY (quality_profile_name) REFERENCES quality_profiles (name) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (quality_profile_name, quality_group_name)
        REFERENCES quality_groups (quality_profile_name, name) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (quality_name) REFERENCES qualities (name) ON DELETE CASCADE ON UPDATE CASCADE,
    CHECK ((quality_group_name IS NULL) <> (quality_name IS NULL))
);

CREATE UNIQUE INDEX IF NOT EXISTS idx_quality_profile_qualities_position
    ON quality_profile_qualities (quality_profile_name, position);
CREATE INDEX IF NOT EXISTS idx_quality_profile_qualities_group
    ON quality_profile_qualities (quality_profile_name, quality_group_name);
CREATE INDEX IF NOT EXISTS idx_quality_profile_qualities_quality
    ON quality_profile_qualities (quality_name);

-- ============================================================================
-- CONDITION TYPE TABLES (polymorphic detail of custom_format_conditions)
-- ============================================================================

CREATE TABLE IF NOT EXISTS condition_patterns (
    custom_format_name      TEXT NOT NULL,
    condition_name          TEXT NOT NULL,
    regular_expression_name TEXT NOT NULL,
    PRIMARY KEY (custom_format_name, condition_name),
    FOREIGN KEY (custom_format_name, condition_name)
        REFERENCES custom_format_conditions (custom_format_name, name) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (regular_expression_name) REFERENCES regular_expressions (name) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_condition_patterns_regex
    ON condition_patterns (regular_expression_name);

CREATE TABLE IF NOT EXISTS condition_languages (
    custom_format_name TEXT NOT NULL,
    condition_name     TEXT NOT NULL,
    language_name      TEXT NOT NULL,
    except_language    INTEGER NOT NULL DEFAULT 0 CHECK (except_language IN (0, 1)),
    PRIMARY KEY (custom_format_name, condition_name),
    FOREIGN KEY (custom_format_name, condition_name)
        REFERENCES custom_format_conditions (custom_format_name, name) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (language_name) REFERENCES languages (name) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_condition_languages_language
    ON condition_languages (language_name);

-- source: bluray | bluray_raw | dvd | television | web_dl | webrip
CREATE TABLE IF NOT EXISTS condition_sources (
    custom_format_name TEXT NOT NULL,
    condition_name     TEXT NOT NULL,
    source             TEXT NOT NULL,
    PRIMARY KEY (custom_format_name, condition_name),
    FOREIGN KEY (custom_format_name, condition_name)
        REFERENCES custom_format_conditions (custom_format_name, name) ON DELETE CASCADE ON UPDATE CASCADE
);

-- resolution: 480p | 576p | 720p | 1080p | 2160p
CREATE TABLE IF NOT EXISTS condition_resolutions (
    custom_format_name TEXT NOT NULL,
    condition_name     TEXT NOT NULL,
    resolution         TEXT NOT NULL,
    PRIMARY KEY (custom_format_name, condition_name),
    FOREIGN KEY (custom_format_name, condition_name)
        REFERENCES custom_format_conditions (custom_format_name, name) ON DELETE CASCADE ON UPDATE CASCADE
);

-- quality_modifier: brdisk | remux
CREATE TABLE IF NOT EXISTS condition_quality_modifiers (
    custom_format_name TEXT NOT NULL,
    condition_name     TEXT NOT NULL,
    quality_modifier   TEXT NOT NULL,
    PRIMARY KEY (custom_format_name, condition_name),
    FOREIGN KEY (custom_format_name, condition_name)
        REFERENCES custom_format_conditions (custom_format_name, name) ON DELETE CASCADE ON UPDATE CASCADE
);

-- release_type: season_pack | single_episode | multi_episode
CREATE TABLE IF NOT EXISTS condition_release_types (
    custom_format_name TEXT NOT NULL,
    condition_name     TEXT NOT NULL,
    release_type       TEXT NOT NULL,
    PRIMARY KEY (custom_format_name, condition_name),
    FOREIGN KEY (custom_format_name, condition_name)
        REFERENCES custom_format_conditions (custom_format_name, name) ON DELETE CASCADE ON UPDATE CASCADE
);

-- flag: freeleech | freeleech_25 | halfleech | freeleech_75 | internal | ptp_golden
CREATE TABLE IF NOT EXISTS condition_indexer_flags (
    custom_format_name TEXT NOT NULL,
    condition_name     TEXT NOT NULL,
    flag               TEXT NOT NULL,
    PRIMARY KEY (custom_format_name, condition_name),
    FOREIGN KEY (custom_format_name, condition_name)
        REFERENCES custom_format_conditions (custom_format_name, name) ON DELETE CASCADE ON UPDATE CASCADE
);

-- ============================================================================
-- MEDIA MANAGEMENT
-- ============================================================================

CREATE TABLE IF NOT EXISTS radarr_media_settings (
    name              TEXT PRIMARY KEY,
    propers_repacks   TEXT NOT NULL DEFAULT 'doNotPrefer',
    enable_media_info INTEGER NOT NULL DEFAULT 1 CHECK (enable_media_info IN (0, 1))
);

CREATE TABLE IF NOT EXISTS sonarr_media_settings (
    name              TEXT PRIMARY KEY,
    propers_repacks   TEXT NOT NULL DEFAULT 'doNotPrefer',
    enable_media_info INTEGER NOT NULL DEFAULT 1 CHECK (enable_media_info IN (0, 1))
);

CREATE TABLE IF NOT EXISTS radarr_naming (
    name                        TEXT PRIMARY KEY,
    rename                      INTEGER NOT NULL DEFAULT 1 CHECK (rename IN (0, 1)),
    movie_format                TEXT NOT NULL,
    movie_folder_format         TEXT NOT NULL,
    replace_illegal_characters  INTEGER NOT NULL DEFAULT 0 CHECK (replace_illegal_characters IN (0, 1)),
    colon_replacement_format    TEXT NOT NULL DEFAULT 'smart'
);

CREATE TABLE IF NOT EXISTS sonarr_naming (
    name                            TEXT PRIMARY KEY,
    rename                          INTEGER NOT NULL DEFAULT 1 CHECK (rename IN (0, 1)),
    standard_episode_format         TEXT NOT NULL,
    daily_episode_format            TEXT NOT NULL,
    anime_episode_format            TEXT NOT NULL,
    series_folder_format            TEXT NOT NULL,
    season_folder_format            TEXT NOT NULL,
    replace_illegal_characters      INTEGER NOT NULL DEFAULT 0 CHECK (replace_illegal_characters IN (0, 1)),
    colon_replacement_format        INTEGER NOT NULL DEFAULT 0,
    custom_colon_replacement_format TEXT,
    multi_episode_style             INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS radarr_quality_definitions (
    name           TEXT NOT NULL,
    quality_name   TEXT NOT NULL,
    min_size       REAL NOT NULL,
    max_size       REAL,
    preferred_size REAL,
    PRIMARY KEY (name, quality_name),
    FOREIGN KEY (quality_name) REFERENCES qualities (name) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_radarr_quality_definitions_quality
    ON radarr_quality_definitions (quality_name);

CREATE TABLE IF NOT EXISTS sonarr_quality_definitions (
    name           TEXT NOT NULL,
    quality_name   TEXT NOT NULL,
    min_size       REAL NOT NULL,
    max_size       REAL,
    preferred_size REAL,
    PRIMARY KEY (name, quality_name),
    FOREIGN KEY (quality_name) REFERENCES qualities (name) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_sonarr_quality_definitions_quality
    ON sonarr_quality_definitions (quality_name);
