-- @operation: export
-- @entity: batch
-- @name: fix include in rename
-- @exportedAt: 2026-08-26T20:15:04.466Z
-- @opIds: 528, 529, 530

-- --- BEGIN op 528 ( update custom_format "AV1" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'AV1' and "include_in_rename" = 0;
-- --- END op 528

-- --- BEGIN op 529 ( update custom_format "Not OK" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'Not OK' and "include_in_rename" = 0;
-- --- END op 529

-- --- BEGIN op 530 ( update custom_format "VFQ" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'VFQ' and "include_in_rename" = 0;
-- --- END op 530
