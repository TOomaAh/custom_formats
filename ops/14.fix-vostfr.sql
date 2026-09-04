-- @operation: export
-- @entity: batch
-- @name: fix vostfr
-- @exportedAt: 2026-09-04T21:21:17.606Z
-- @opIds: 572, 573, 574, 575, 576, 577, 578, 579

-- --- BEGIN op 572 ( create custom_format "VOSTFR" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('VOSTFR', 'Dark.Matter.2024.S02E02.A.Perfect.World.MULTi.AD.1080p.ATV.WEB.SDR.H265-BYOR', 'series', 0, NULL);
-- --- END op 572

-- --- BEGIN op 573 ( create custom_format "VOSTFR" )
INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES ('VOSTFR', 'Silo - S03E05 - Memory - [HEVC Multi-Audio][WEBDL-1080p][FR+EN].mkv', 'series', 0, NULL);
-- --- END op 573

-- --- BEGIN op 574 ( update custom_format "VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VOSTFR', 'New Condition', 'release_title', 'all', 1, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VOSTFR', 'New Condition', 'FR+ ou +FR tag');
-- --- END op 574

-- --- BEGIN op 575 ( update custom_format "VOSTFR" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'VOSTFR'
	  AND name = 'New Condition'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 0;
-- --- END op 575

-- --- BEGIN op 576 ( update custom_format "VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VOSTFR', 'FR tag', 'release_title', 'all', 1, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VOSTFR', 'FR tag', 'FR+ ou +FR tag');
-- --- END op 576

-- --- BEGIN op 577 ( update custom_format "VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VOSTFR', 'Multi', 'release_title', 'all', 1, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VOSTFR', 'Multi', 'Multi ou FR+ tag');
-- --- END op 577

-- --- BEGIN op 578 ( update custom_format "VOSTFR" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'VOSTFR'
  AND name = 'FR tag'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 0;
-- --- END op 578

-- --- BEGIN op 579 ( update custom_format "VOSTFR" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'VOSTFR'
  AND name = 'Multi'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 1
  AND required = 0;
-- --- END op 579
