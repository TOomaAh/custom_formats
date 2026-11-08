-- @operation: export
-- @entity: batch
-- @name: add banned teams zeubi
-- @exportedAt: 2026-11-08T01:53:28.368Z
-- @opIds: 367, 368, 369, 370, 371, 372, 373, 374

-- --- BEGIN op 367 ( create regular_expression "Banned Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Banned Teams', '\b(TLC)\b', NULL, NULL);
-- --- END op 367

-- --- BEGIN op 368 ( update regular_expression "Banned Teams" )
update "regular_expressions" set "pattern" = '\b(Anime-DL)\b' where "name" = 'Banned Teams' and "pattern" = '\b(TLC)\b';
-- --- END op 368

-- --- BEGIN op 369 ( create custom_format "Banned Teams" )
insert into "custom_formats" ("name", "description") values ('Banned Teams', '');
-- --- END op 369

-- --- BEGIN op 370 ( update custom_format "Banned Teams" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Teams', 'Prefered Teams', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Teams', 'Prefered Teams', 'Prefered Teams');
-- --- END op 370

-- --- BEGIN op 371 ( update custom_format "Banned Teams" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Banned Teams'
	  AND name = 'Prefered Teams'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 371

-- --- BEGIN op 372 ( update custom_format "Banned Teams" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Teams', 'Banned Teams', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Teams', 'Banned Teams', 'Banned Teams');
-- --- END op 372

-- --- BEGIN op 373 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'Banned Teams', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'Banned Teams'
    AND arr_type = 'radarr'
);
-- --- END op 373

-- --- BEGIN op 374 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'Banned Teams', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'Banned Teams'
    AND arr_type = 'sonarr'
);
-- --- END op 374
