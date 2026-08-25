-- @operation: export
-- @entity: batch
-- @name: media settings
-- @exportedAt: 2026-08-25T22:14:14.116Z
-- @opIds: 339, 340

-- --- BEGIN op 339 ( create radarr_media_settings "Radarr" )
insert into "radarr_media_settings" ("name", "propers_repacks", "enable_media_info") values ('Radarr', 'doNotPrefer', 1);
-- --- END op 339

-- --- BEGIN op 340 ( create sonarr_media_settings "Sonarr" )
insert into "sonarr_media_settings" ("name", "propers_repacks", "enable_media_info") values ('Sonarr', 'doNotPrefer', 1);
-- --- END op 340
