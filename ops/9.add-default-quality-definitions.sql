-- @operation: export
-- @entity: batch
-- @name: add default quality definitions
-- @exportedAt: 2026-08-26T20:11:52.391Z
-- @opIds: 520, 521, 522, 523, 524, 525, 526

-- --- BEGIN op 520 ( create delay_profile "Standard Delay" )
insert into "delay_profiles" ("name", "preferred_protocol", "usenet_delay", "torrent_delay", "bypass_if_highest_quality", "bypass_if_above_custom_format_score", "minimum_custom_format_score") values ('Standard Delay', 'prefer_torrent', 600, 600, 0, 0, NULL);
-- --- END op 520

-- --- BEGIN op 521 ( create sonarr_quality_definitions "Default" )
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default', 'Bluray-1080p', 4, 0, 95);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default', 'Bluray-2160p', 35, 0, 95);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default', 'Bluray-480p', 2, 100, 95);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default', 'Bluray-576p', 2, 100, 95);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default', 'Bluray-720p', 4, 130, 95);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default', 'DVD', 2, 100, 95);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default', 'HDTV-1080p', 4, 125, 95);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default', 'HDTV-2160p', 35, 0, 95);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default', 'HDTV-720p', 3, 125, 95);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default', 'Raw-HD', 4, 0, 95);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default', 'Remux-1080p', 35, 200, 95);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default', 'Remux-2160p', 5, 0, 95);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default', 'SDTV', 2, 100, 95);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default', 'Unknown', 1, 200, 95);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default', 'WEBDL-1080p', 4, 130, 95);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default', 'WEBDL-2160p', 5, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default', 'WEBDL-480p', 2, 100, 95);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default', 'WEBDL-720p', 3, 130, 95);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default', 'WEBRip-1080p', 4, 130, 95);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default', 'WEBRip-2160p', 35, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default', 'WEBRip-480p', 2, 100, 95);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default', 'WEBRip-720p', 3, 130, 95);
-- --- END op 521

-- --- BEGIN op 522 ( update sonarr_quality_definitions "Default" )
update "sonarr_quality_definitions" set "min_size" = 35, "max_size" = 0, "preferred_size" = 95 where "name" = 'Default' and "quality_name" = 'Remux-2160p' and "min_size" = 5 and "max_size" = 0 and "preferred_size" = 95;
-- --- END op 522

-- --- BEGIN op 523 ( update sonarr_quality_definitions "Default" )
update "sonarr_quality_definitions" set "min_size" = 35, "max_size" = 0, "preferred_size" = 95 where "name" = 'Default' and "quality_name" = 'WEBDL-2160p' and "min_size" = 5 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 523

-- --- BEGIN op 524 ( update sonarr_quality_definitions "Default" )
update "sonarr_quality_definitions" set "min_size" = 35, "max_size" = 0, "preferred_size" = 95 where "name" = 'Default' and "quality_name" = 'WEBRip-2160p' and "min_size" = 35 and "max_size" = 0 and "preferred_size" = 0;
-- --- END op 524

-- --- BEGIN op 525 ( update sonarr_quality_definitions "Default Sonarr" )
update "sonarr_quality_definitions" set "name" = 'Default Sonarr' where "name" = 'Default';
-- --- END op 525

-- --- BEGIN op 526 ( create radarr_quality_definitions "Default Radarr" )
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'Bluray-1080p', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'Bluray-2160p', 0, 0, 1999);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'Bluray-480p', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'Bluray-576p', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'Bluray-720p', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'BR-DISK', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'CAM', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'DVD', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'DVD-R', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'DVDSCR', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'HDTV-1080p', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'HDTV-2160p', 0, 0, 1999);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'HDTV-720p', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'Raw-HD', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'REGIONAL', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'Remux-1080p', 0, 0, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'Remux-2160p', 0, 0, 1999);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'SDTV', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'TELECINE', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'TELESYNC', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'Unknown', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'WEBDL-1080p', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'WEBDL-2160p', 0, 0, 1999);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'WEBDL-480p', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'WEBDL-720p', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'WEBRip-1080p', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'WEBRip-2160p', 0, 0, 1999);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'WEBRip-480p', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'WEBRip-720p', 0, 100, 95);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Default Radarr', 'WORKPRINT', 0, 100, 95);
-- --- END op 526
