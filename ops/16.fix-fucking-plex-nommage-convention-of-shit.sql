-- @operation: export
-- @entity: batch
-- @name: fix fucking plex nommage convention of shit
-- @exportedAt: 2026-09-13T13:02:48.300Z
-- @opIds: 585

-- --- BEGIN op 585 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "multi_episode_style" = 5 where "name" = 'Sonarr' and "multi_episode_style" = 2;
-- --- END op 585
