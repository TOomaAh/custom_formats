-- @operation: export
-- @entity: batch
-- @name: add profilarr profile
-- @exportedAt: 2026-08-26T08:49:14.426Z
-- @opIds: 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469

-- --- BEGIN op 427 ( create quality_profile "Profilarr" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('Profilarr', NULL, 1, 0, 0, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Profilarr', 'WEB 1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr', 'WEB 1080p', 'WEBDL-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr', 'WEB 1080p', 'WEBRip-1080p', 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Profilarr', 'Pre-releases');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr', 'Pre-releases', 'REGIONAL', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr', 'Pre-releases', 'DVDSCR', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr', 'Pre-releases', 'TELECINE', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr', 'Pre-releases', 'TELESYNC', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr', 'Pre-releases', 'CAM', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr', 'Pre-releases', 'WORKPRINT', 5);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Profilarr', 'Unwanted');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr', 'Unwanted', 'Unknown', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr', 'Unwanted', 'Raw-HD', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr', 'Unwanted', 'BR-DISK', 2);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', 'Remux-2160p', NULL, 1, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', 'Bluray-2160p', NULL, 2, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', 'WEBDL-2160p', NULL, 3, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', 'WEBRip-2160p', NULL, 4, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', 'HDTV-2160p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', 'Remux-1080p', NULL, 6, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', 'Bluray-1080p', NULL, 7, 1, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', NULL, 'WEB 1080p', 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', 'HDTV-1080p', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', 'Bluray-720p', NULL, 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', 'WEBDL-720p', NULL, 11, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', 'WEBRip-720p', NULL, 12, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', 'HDTV-720p', NULL, 13, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', 'Bluray-576p', NULL, 14, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', 'Bluray-480p', NULL, 15, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', 'WEBDL-480p', NULL, 16, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', 'WEBRip-480p', NULL, 17, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', 'HDTV-480p', NULL, 18, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', 'DVD-R', NULL, 19, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', 'DVD', NULL, 20, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', 'SDTV', NULL, 21, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', NULL, 'Pre-releases', 22, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr', NULL, 'Unwanted', 23, 0, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('Profilarr', 'Any', 'simple');
-- --- END op 427

-- --- BEGIN op 428 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', '1080p', 'radarr', 80
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = '1080p'
    AND arr_type = 'radarr'
);
-- --- END op 428

-- --- BEGIN op 429 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', '1080p', 'sonarr', 80
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = '1080p'
    AND arr_type = 'sonarr'
);
-- --- END op 429

-- --- BEGIN op 430 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', '480p', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = '480p'
    AND arr_type = 'radarr'
);
-- --- END op 430

-- --- BEGIN op 431 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', '480p', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = '480p'
    AND arr_type = 'sonarr'
);
-- --- END op 431

-- --- BEGIN op 432 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', '576p', 'radarr', -60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = '576p'
    AND arr_type = 'radarr'
);
-- --- END op 432

-- --- BEGIN op 433 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', '576p', 'sonarr', -60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = '576p'
    AND arr_type = 'sonarr'
);
-- --- END op 433

-- --- BEGIN op 434 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', '720p', 'radarr', -30
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = '720p'
    AND arr_type = 'radarr'
);
-- --- END op 434

-- --- BEGIN op 435 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', '720p', 'sonarr', -30
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = '720p'
    AND arr_type = 'sonarr'
);
-- --- END op 435

-- --- BEGIN op 436 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'AV1', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'AV1'
    AND arr_type = 'radarr'
);
-- --- END op 436

-- --- BEGIN op 437 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'AV1', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'AV1'
    AND arr_type = 'sonarr'
);
-- --- END op 437

-- --- BEGIN op 438 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'BluRay', 'radarr', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'BluRay'
    AND arr_type = 'radarr'
);
-- --- END op 438

-- --- BEGIN op 439 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'BluRay', 'sonarr', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'BluRay'
    AND arr_type = 'sonarr'
);
-- --- END op 439

-- --- BEGIN op 440 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'H264', 'radarr', -30
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'H264'
    AND arr_type = 'radarr'
);
-- --- END op 440

-- --- BEGIN op 441 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'H264', 'sonarr', -30
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'H264'
    AND arr_type = 'sonarr'
);
-- --- END op 441

-- --- BEGIN op 442 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'HDTV', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 442

-- --- BEGIN op 443 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'HDTV', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 443

-- --- BEGIN op 444 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'HEVC', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'HEVC'
    AND arr_type = 'radarr'
);
-- --- END op 444

-- --- BEGIN op 445 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'HEVC', 'sonarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'HEVC'
    AND arr_type = 'sonarr'
);
-- --- END op 445

-- --- BEGIN op 446 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'Multi-Audio', 'radarr', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'Multi-Audio'
    AND arr_type = 'radarr'
);
-- --- END op 446

-- --- BEGIN op 447 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'Multi-Audio', 'sonarr', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'Multi-Audio'
    AND arr_type = 'sonarr'
);
-- --- END op 447

-- --- BEGIN op 448 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'Not OK', 'radarr', -200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'Not OK'
    AND arr_type = 'radarr'
);
-- --- END op 448

-- --- BEGIN op 449 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'Not OK', 'sonarr', -200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'Not OK'
    AND arr_type = 'sonarr'
);
-- --- END op 449

-- --- BEGIN op 450 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'Repack Proper', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'Repack Proper'
    AND arr_type = 'radarr'
);
-- --- END op 450

-- --- BEGIN op 451 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'Repack Proper', 'sonarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'Repack Proper'
    AND arr_type = 'sonarr'
);
-- --- END op 451

-- --- BEGIN op 452 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'SD', 'radarr', -90
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'SD'
    AND arr_type = 'radarr'
);
-- --- END op 452

-- --- BEGIN op 453 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'SD', 'sonarr', -90
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'SD'
    AND arr_type = 'sonarr'
);
-- --- END op 453

-- --- BEGIN op 454 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'VFF', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'VFF'
    AND arr_type = 'radarr'
);
-- --- END op 454

-- --- BEGIN op 455 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'VFF', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'VFF'
    AND arr_type = 'sonarr'
);
-- --- END op 455

-- --- BEGIN op 456 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'VFQ', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'VFQ'
    AND arr_type = 'radarr'
);
-- --- END op 456

-- --- BEGIN op 457 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'VFQ', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'VFQ'
    AND arr_type = 'sonarr'
);
-- --- END op 457

-- --- BEGIN op 458 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'VO', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'VO'
    AND arr_type = 'radarr'
);
-- --- END op 458

-- --- BEGIN op 459 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'VO', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'VO'
    AND arr_type = 'sonarr'
);
-- --- END op 459

-- --- BEGIN op 460 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'VOSTFR', 'radarr', -150
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'radarr'
);
-- --- END op 460

-- --- BEGIN op 461 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'VOSTFR', 'sonarr', -150
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'sonarr'
);
-- --- END op 461

-- --- BEGIN op 462 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'WEB-DL', 'radarr', 70
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 462

-- --- BEGIN op 463 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'WEB-DL', 'sonarr', 70
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 463

-- --- BEGIN op 464 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'WEBRip', 'radarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 464

-- --- BEGIN op 465 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'WEBRip', 'sonarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 465

-- --- BEGIN op 466 ( update quality_profile "Profilarr" )
update "quality_profiles" set "minimum_custom_format_score" = -200 where "name" = 'Profilarr' and "minimum_custom_format_score" = 0;
-- --- END op 466

-- --- BEGIN op 467 ( update quality_profile "Profilarr" )
update "quality_profiles" set "upgrade_until_score" = 470 where "name" = 'Profilarr' and "upgrade_until_score" = 0;
-- --- END op 467

-- --- BEGIN op 468 ( update quality_profile "Profilarr" )
update "quality_profiles" set "upgrade_score_increment" = 20 where "name" = 'Profilarr' and "upgrade_score_increment" = 1;
-- --- END op 468

-- --- BEGIN op 469 ( update quality_profile "Profilarr" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'Bluray-1080p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 1
  AND upgrade_until = 1;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Profilarr'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Profilarr'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name = 'WEBDL-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Profilarr'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name = 'WEBRip-1080p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Profilarr'
  AND name = 'WEB 1080p';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'HDTV-1080p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'WEBDL-720p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'WEBRip-720p'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'WEBDL-480p'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'Profilarr', '1080p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'Profilarr'
    AND name = '1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Profilarr', '1080p', 'WEBDL-1080p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Profilarr'
    AND quality_group_name = '1080p'
    AND quality_name = 'WEBDL-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Profilarr', '1080p', 'WEBRip-1080p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Profilarr'
    AND quality_group_name = '1080p'
    AND quality_name = 'WEBRip-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Profilarr', '1080p', 'Bluray-1080p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Profilarr'
    AND quality_group_name = '1080p'
    AND quality_name = 'Bluray-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Profilarr', '1080p', 'Remux-1080p', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Profilarr'
    AND quality_group_name = '1080p'
    AND quality_name = 'Remux-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Profilarr', '1080p', 'HDTV-1080p', 4
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Profilarr'
    AND quality_group_name = '1080p'
    AND quality_name = 'HDTV-1080p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Profilarr', NULL, '1080p', 5, 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Profilarr'
    AND quality_name IS NULL
    AND quality_group_name = '1080p'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'Profilarr', '720p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'Profilarr'
    AND name = '720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Profilarr', '720p', 'WEBDL-720p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Profilarr'
    AND quality_group_name = '720p'
    AND quality_name = 'WEBDL-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Profilarr', '720p', 'WEBRip-720p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Profilarr'
    AND quality_group_name = '720p'
    AND quality_name = 'WEBRip-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Profilarr', '720p', 'Bluray-720p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Profilarr'
    AND quality_group_name = '720p'
    AND quality_name = 'Bluray-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Profilarr', '720p', 'HDTV-720p', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Profilarr'
    AND quality_group_name = '720p'
    AND quality_name = 'HDTV-720p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Profilarr', NULL, '720p', 6, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Profilarr'
    AND quality_name IS NULL
    AND quality_group_name = '720p'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'Profilarr', '480p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'Profilarr'
    AND name = '480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Profilarr', '480p', 'WEBDL-480p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Profilarr'
    AND quality_group_name = '480p'
    AND quality_name = 'WEBDL-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Profilarr', '480p', 'WEBRip-480p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Profilarr'
    AND quality_group_name = '480p'
    AND quality_name = 'WEBRip-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Profilarr', '480p', 'Bluray-480p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Profilarr'
    AND quality_group_name = '480p'
    AND quality_name = 'Bluray-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Profilarr', '480p', 'HDTV-480p', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Profilarr'
    AND quality_group_name = '480p'
    AND quality_name = 'HDTV-480p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Profilarr', NULL, '480p', 8, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Profilarr'
    AND quality_name IS NULL
    AND quality_group_name = '480p'
);

UPDATE quality_profile_qualities
SET position = 0
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 1
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 2
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 3
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7, enabled = 1
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9, enabled = 1
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = 'Profilarr'
  AND quality_group_name = 'Pre-releases'
  AND quality_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = 'Profilarr'
  AND quality_group_name = 'Unwanted'
  AND quality_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 469
