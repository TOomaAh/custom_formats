-- @operation: export
-- @entity: batch
-- @name: add media naming
-- @exportedAt: 2026-08-25T22:13:20.357Z
-- @opIds: 336, 337

-- --- BEGIN op 336 ( create radarr_naming "Radarr" )
insert into "radarr_naming" ("name", "rename", "movie_format", "movie_folder_format", "replace_illegal_characters", "colon_replacement_format") values ('Radarr', 1, '{Movie Title:FR} ({Release Year}) [{Custom Formats}][{Quality Title}]{MediaInfo AudioLanguages}{Movie CleanTitle}', '{Movie Title:FR} ({Release Year}) [imdbid-{ImdbId}]', 1, 'delete');
-- --- END op 336

-- --- BEGIN op 337 ( create sonarr_naming "Sonarr" )
insert into "sonarr_naming" ("name", "rename", "standard_episode_format", "daily_episode_format", "anime_episode_format", "series_folder_format", "season_folder_format", "replace_illegal_characters", "colon_replacement_format", "custom_colon_replacement_format", "multi_episode_style") values ('Sonarr', 1, '{Series Title:FR} - S{season:00}E{episode:00} - {Episode Title} - [{Custom Formats}][{Quality Full}]{MediaInfo AudioLanguages}{Series CleanTitle}', '{Series Title} - S{season:00}E{episode:00} - {Episode Title} - [{Custom Formats}][{Quality Full}]{MediaInfo AudioLanguages}{Series CleanTitle}', '{Series Title} - S{season:00}E{absolute:00} - {Episode Title} - [{Custom Formats}][{Quality Full}]{MediaInfo AudioLanguages}{Series TitleYear}', '''{Series Title} [imdbid-{ImdbId}]{Series CleanTitle}', 'Saison {season:00}', 1, 0, NULL, 0);
-- --- END op 337
