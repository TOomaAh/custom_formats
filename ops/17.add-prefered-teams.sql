-- @operation: export
-- @entity: batch
-- @name: Add Prefered Teams
-- @exportedAt: 2026-09-13T15:29:58.784Z
-- @opIds: 356, 357, 358, 359, 360, 361, 362

-- --- BEGIN op 356 ( create custom_format "Prefered Teams" )
insert into "custom_formats" ("name", "description") values ('Prefered Teams', '');
-- --- END op 356

-- --- BEGIN op 357 ( create regular_expression "Prefered Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Prefered Teams', '\b(AvALoN)\b', 'Toutes les teams qui ne propose que de l''HEVC', NULL);
-- --- END op 357

-- --- BEGIN op 358 ( update regular_expression "Prefered Teams" )
update "regular_expressions" set "description" = NULL where "name" = 'Prefered Teams' and "description" = 'Toutes les teams qui ne propose que de l''HEVC';
-- --- END op 358

-- --- BEGIN op 359 ( update regular_expression "Prefered Teams" )
update "regular_expressions" set "pattern" = '\b(TLC)\b' where "name" = 'Prefered Teams' and "pattern" = '\b(AvALoN)\b';
-- --- END op 359

-- --- BEGIN op 360 ( update custom_format "Prefered Teams" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Prefered Teams', 'Prefered Teams', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Prefered Teams', 'Prefered Teams', 'Prefered Teams');
-- --- END op 360

-- --- BEGIN op 361 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'Prefered Teams', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'Prefered Teams'
    AND arr_type = 'radarr'
);
-- --- END op 361

-- --- BEGIN op 362 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'Prefered Teams', 'sonarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'Prefered Teams'
    AND arr_type = 'sonarr'
);
-- --- END op 362
