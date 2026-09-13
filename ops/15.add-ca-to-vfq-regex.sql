-- @operation: export
-- @entity: batch
-- @name: add CA to VFQ regex
-- @exportedAt: 2026-09-13T13:02:25.379Z
-- @opIds: 584

-- --- BEGIN op 584 ( update regular_expression "VFQ" )
update "regular_expressions" set "pattern" = '\b(VFQ|CA)\b' where "name" = 'VFQ' and "pattern" = '\b(VFQ)\b';
-- --- END op 584
