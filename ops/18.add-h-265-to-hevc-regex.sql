-- @operation: export
-- @entity: batch
-- @name: add H.265 to HEVC regex
-- @exportedAt: 2026-09-21T20:12:09.809Z
-- @opIds: 364

-- --- BEGIN op 364 ( update regular_expression "H265" )
update "regular_expressions" set "pattern" = '\b(h265|x265|hevc|HEVC|H.265)\b' where "name" = 'H265' and "pattern" = '\b(h265|x265|hevc|HEVC)\b';
-- --- END op 364
