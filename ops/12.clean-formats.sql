-- @operation: export
-- @entity: batch
-- @name: clean formats
-- @exportedAt: 2026-08-26T20:30:14.538Z
-- @opIds: 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561

-- --- BEGIN op 534 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "colon_replacement_format" = 4 where "name" = 'Sonarr' and "colon_replacement_format" = 0;
-- --- END op 534

-- --- BEGIN op 535 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "multi_episode_style" = 2 where "name" = 'Sonarr' and "multi_episode_style" = 0;
-- --- END op 535

-- --- BEGIN op 536 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "series_folder_format" = '{Series Title} [imdbid-{ImdbId}]' where "name" = 'Sonarr' and "series_folder_format" = '''{Series Title} [imdbid-{ImdbId}]{Series CleanTitle}';
-- --- END op 536

-- --- BEGIN op 537 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "standard_episode_format" = '{Series Title:FR} - S{season:00}E{episode:00} - {Episode Title} - [{Custom Formats}][{Quality Full}]{MediaInfo AudioLanguages}' where "name" = 'Sonarr' and "standard_episode_format" = '{Series Title:FR} - S{season:00}E{episode:00} - {Episode Title} - [{Custom Formats}][{Quality Full}]{MediaInfo AudioLanguages}{Series CleanTitle}';
-- --- END op 537

-- --- BEGIN op 538 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "daily_episode_format" = '{Series Title} - S{season:00}E{episode:00} - {Episode Title} - [{Custom Formats}][{Quality Full}]{MediaInfo AudioLanguages}' where "name" = 'Sonarr' and "daily_episode_format" = '{Series Title} - S{season:00}E{episode:00} - {Episode Title} - [{Custom Formats}][{Quality Full}]{MediaInfo AudioLanguages}{Series CleanTitle}';
-- --- END op 538

-- --- BEGIN op 539 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "anime_episode_format" = '{Series Title} - S{season:00}E{absolute:00} - {Episode Title} - [{Custom Formats}][{Quality Full}]{MediaInfo AudioLanguages}' where "name" = 'Sonarr' and "anime_episode_format" = '{Series Title} - S{season:00}E{absolute:00} - {Episode Title} - [{Custom Formats}][{Quality Full}]{MediaInfo AudioLanguages}{Series TitleYear}';
-- --- END op 539

-- --- BEGIN op 540 ( update sonarr_quality_definitions "Default Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 4, "max_size" = 155, "preferred_size" = 95 where "name" = 'Default Sonarr' and "quality_name" = 'Bluray-1080p' and "min_size" = 4 and "max_size" = 0 and "preferred_size" = 95;
-- --- END op 540

-- --- BEGIN op 541 ( update sonarr_quality_definitions "Default Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 35, "max_size" = 199, "preferred_size" = 95 where "name" = 'Default Sonarr' and "quality_name" = 'HDTV-2160p' and "min_size" = 35 and "max_size" = 0 and "preferred_size" = 95;
-- --- END op 541

-- --- BEGIN op 542 ( update sonarr_quality_definitions "Default Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 35, "max_size" = 0, "preferred_size" = 95 where "name" = 'Default Sonarr' and "quality_name" = 'Remux-1080p' and "min_size" = 35 and "max_size" = 200 and "preferred_size" = 95;
-- --- END op 542

-- --- BEGIN op 543 ( update custom_format "HEVC" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'HEVC'
  AND name = 'HEVC'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 543

-- --- BEGIN op 544 ( update regular_expression "Team HEVC" )
update "regular_expressions" set "pattern" = '\b(AvALoN)\b' where "name" = 'Team HEVC' and "pattern" = 'b(AvALoN)\b';
-- --- END op 544

-- --- BEGIN op 545 ( update custom_format "HEVC" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HEVC', 'H264', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HEVC', 'H264', 'H264');
-- --- END op 545

-- --- BEGIN op 546 ( update custom_format "HEVC" )
UPDATE custom_format_conditions
SET negate = 1
WHERE custom_format_name = 'HEVC'
  AND name = 'HEVC'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;
-- --- END op 546

-- --- BEGIN op 547 ( update regular_expression "H264" )
update "regular_expressions" set "pattern" = '(?i)\b(x264|x\.264|h264|h\.264|AVC|CAVS|AVCHD|H 264)\b' where "name" = 'H264' and "pattern" = '(?i)\b(x264|x\.264|h264|h\.264|AVC|CAVS|AVCHD)\b';
-- --- END op 547

-- --- BEGIN op 548 ( update custom_format "HEVC" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'HEVC'
	  AND name = 'H264'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 548

-- --- BEGIN op 549 ( update custom_format "HEVC" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HEVC', '264', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HEVC', '264', 'H264');
-- --- END op 549

-- --- BEGIN op 550 ( update custom_format "HEVC" )
UPDATE custom_format_conditions
SET negate = 0
WHERE custom_format_name = 'HEVC'
  AND name = 'HEVC'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 1;
-- --- END op 550

-- --- BEGIN op 551 ( update custom_format "BluRay" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'BluRay'
  AND name = 'BluRay'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 551

-- --- BEGIN op 552 ( update radarr_naming "Radarr" )
update "radarr_naming" set "movie_format" = '{Movie Title:FR} ({Release Year}) [{Custom Formats}][{Quality Title}]{MediaInfo AudioLanguages}' where "name" = 'Radarr' and "movie_format" = '{Movie Title:FR} ({Release Year}) [{Custom Formats}][{Quality Title}]{MediaInfo AudioLanguages}{Movie CleanTitle}';
-- --- END op 552

-- --- BEGIN op 553 ( update radarr_quality_definitions "Default Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 0 where "name" = 'Default Radarr' and "quality_name" = 'Remux-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1999;
-- --- END op 553

-- --- BEGIN op 554 ( update radarr_quality_definitions "Default Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 0 where "name" = 'Default Radarr' and "quality_name" = 'WEBDL-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1999;
-- --- END op 554

-- --- BEGIN op 555 ( update radarr_quality_definitions "Default Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 0 where "name" = 'Default Radarr' and "quality_name" = 'WEBRip-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1999;
-- --- END op 555

-- --- BEGIN op 556 ( update radarr_quality_definitions "Default Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 0 where "name" = 'Default Radarr' and "quality_name" = 'Bluray-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1999;
-- --- END op 556

-- --- BEGIN op 557 ( update radarr_quality_definitions "Default Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 0 where "name" = 'Default Radarr' and "quality_name" = 'HDTV-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1999;
-- --- END op 557

-- --- BEGIN op 558 ( update radarr_quality_definitions "Default Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 0 where "name" = 'Default Radarr' and "quality_name" = 'BR-DISK' and "min_size" = 0 and "max_size" = 100 and "preferred_size" = 95;
-- --- END op 558

-- --- BEGIN op 559 ( update radarr_quality_definitions "Default Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 0 where "name" = 'Default Radarr' and "quality_name" = 'Bluray-1080p' and "min_size" = 0 and "max_size" = 100 and "preferred_size" = 95;
-- --- END op 559

-- --- BEGIN op 560 ( update radarr_quality_definitions "Default Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 0 where "name" = 'Default Radarr' and "quality_name" = 'Raw-HD' and "min_size" = 0 and "max_size" = 100 and "preferred_size" = 95;
-- --- END op 560

-- --- BEGIN op 561 ( update radarr_quality_definitions "Default Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 0 where "name" = 'Default Radarr' and "quality_name" = 'Remux-1080p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 95;
-- --- END op 561
