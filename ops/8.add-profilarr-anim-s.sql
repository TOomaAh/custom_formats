-- @operation: export
-- @entity: batch
-- @name: add profilarr animés
-- @exportedAt: 2026-08-26T08:50:52.260Z
-- @opIds: 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518

-- --- BEGIN op 471 ( create quality_profile "Profilarr - Animés" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('Profilarr - Animés', NULL, 1, 0, 0, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr - Animés', 'Remux-2160p', NULL, 0, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr - Animés', 'Bluray-2160p', NULL, 1, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr - Animés', 'WEBDL-2160p', NULL, 2, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr - Animés', 'WEBRip-2160p', NULL, 3, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr - Animés', 'HDTV-2160p', NULL, 4, 0, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Profilarr - Animés', '1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr - Animés', '1080p', 'WEBDL-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr - Animés', '1080p', 'WEBRip-1080p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr - Animés', '1080p', 'Bluray-1080p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr - Animés', '1080p', 'Remux-1080p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr - Animés', '1080p', 'HDTV-1080p', 4);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr - Animés', NULL, '1080p', 5, 1, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Profilarr - Animés', '720p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr - Animés', '720p', 'WEBDL-720p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr - Animés', '720p', 'WEBRip-720p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr - Animés', '720p', 'Bluray-720p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr - Animés', '720p', 'HDTV-720p', 3);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr - Animés', NULL, '720p', 6, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr - Animés', 'Bluray-576p', NULL, 7, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Profilarr - Animés', '480p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr - Animés', '480p', 'WEBDL-480p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr - Animés', '480p', 'WEBRip-480p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr - Animés', '480p', 'Bluray-480p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr - Animés', '480p', 'HDTV-480p', 3);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr - Animés', NULL, '480p', 8, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr - Animés', 'SDTV', NULL, 9, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr - Animés', 'DVD-R', NULL, 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr - Animés', 'DVD', NULL, 11, 0, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Profilarr - Animés', 'Pre-releases');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr - Animés', 'Pre-releases', 'REGIONAL', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr - Animés', 'Pre-releases', 'DVDSCR', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr - Animés', 'Pre-releases', 'TELECINE', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr - Animés', 'Pre-releases', 'TELESYNC', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr - Animés', 'Pre-releases', 'CAM', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr - Animés', 'Pre-releases', 'WORKPRINT', 5);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr - Animés', NULL, 'Pre-releases', 12, 0, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Profilarr - Animés', 'Unwanted');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr - Animés', 'Unwanted', 'Unknown', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr - Animés', 'Unwanted', 'Raw-HD', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Profilarr - Animés', 'Unwanted', 'BR-DISK', 2);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Profilarr - Animés', NULL, 'Unwanted', 13, 0, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('Profilarr - Animés', 'Any', 'simple');
-- --- END op 471

-- --- BEGIN op 472 ( update quality_profile "Profilarr - Animés" )
update "quality_profiles" set "minimum_custom_format_score" = -200 where "name" = 'Profilarr - Animés' and "minimum_custom_format_score" = 0;
-- --- END op 472

-- --- BEGIN op 473 ( update quality_profile "Profilarr - Animés" )
update "quality_profiles" set "upgrade_until_score" = 470 where "name" = 'Profilarr - Animés' and "upgrade_until_score" = 0;
-- --- END op 473

-- --- BEGIN op 474 ( update quality_profile "Profilarr - Animés" )
update "quality_profiles" set "upgrade_score_increment" = 20 where "name" = 'Profilarr - Animés' and "upgrade_score_increment" = 1;
-- --- END op 474

-- --- BEGIN op 475 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', '1080p', 'radarr', 80
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = '1080p'
    AND arr_type = 'radarr'
);
-- --- END op 475

-- --- BEGIN op 476 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', '1080p', 'sonarr', 80
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = '1080p'
    AND arr_type = 'sonarr'
);
-- --- END op 476

-- --- BEGIN op 477 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', '480p', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = '480p'
    AND arr_type = 'radarr'
);
-- --- END op 477

-- --- BEGIN op 478 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', '480p', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = '480p'
    AND arr_type = 'sonarr'
);
-- --- END op 478

-- --- BEGIN op 479 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', '576p', 'radarr', -60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = '576p'
    AND arr_type = 'radarr'
);
-- --- END op 479

-- --- BEGIN op 480 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', '576p', 'sonarr', -60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = '576p'
    AND arr_type = 'sonarr'
);
-- --- END op 480

-- --- BEGIN op 481 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', '720p', 'radarr', -30
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = '720p'
    AND arr_type = 'radarr'
);
-- --- END op 481

-- --- BEGIN op 482 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', '720p', 'sonarr', -30
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = '720p'
    AND arr_type = 'sonarr'
);
-- --- END op 482

-- --- BEGIN op 483 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'AV1', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'AV1'
    AND arr_type = 'radarr'
);
-- --- END op 483

-- --- BEGIN op 484 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'AV1', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'AV1'
    AND arr_type = 'sonarr'
);
-- --- END op 484

-- --- BEGIN op 485 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'BluRay', 'radarr', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'BluRay'
    AND arr_type = 'radarr'
);
-- --- END op 485

-- --- BEGIN op 486 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'BluRay', 'sonarr', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'BluRay'
    AND arr_type = 'sonarr'
);
-- --- END op 486

-- --- BEGIN op 487 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'H264', 'radarr', -30
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'H264'
    AND arr_type = 'radarr'
);
-- --- END op 487

-- --- BEGIN op 488 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'H264', 'sonarr', -30
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'H264'
    AND arr_type = 'sonarr'
);
-- --- END op 488

-- --- BEGIN op 489 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'HDTV', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 489

-- --- BEGIN op 490 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'HDTV', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 490

-- --- BEGIN op 491 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'HEVC', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'HEVC'
    AND arr_type = 'radarr'
);
-- --- END op 491

-- --- BEGIN op 492 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'HEVC', 'sonarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'HEVC'
    AND arr_type = 'sonarr'
);
-- --- END op 492

-- --- BEGIN op 493 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'Multi-Audio', 'radarr', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'Multi-Audio'
    AND arr_type = 'radarr'
);
-- --- END op 493

-- --- BEGIN op 494 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'Multi-Audio', 'sonarr', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'Multi-Audio'
    AND arr_type = 'sonarr'
);
-- --- END op 494

-- --- BEGIN op 495 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'Not OK', 'radarr', -200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'Not OK'
    AND arr_type = 'radarr'
);
-- --- END op 495

-- --- BEGIN op 496 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'Not OK', 'sonarr', -200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'Not OK'
    AND arr_type = 'sonarr'
);
-- --- END op 496

-- --- BEGIN op 497 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'Repack Proper', 'radarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'Repack Proper'
    AND arr_type = 'radarr'
);
-- --- END op 497

-- --- BEGIN op 498 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'Repack Proper', 'sonarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'Repack Proper'
    AND arr_type = 'sonarr'
);
-- --- END op 498

-- --- BEGIN op 499 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'SD', 'radarr', -90
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'SD'
    AND arr_type = 'radarr'
);
-- --- END op 499

-- --- BEGIN op 500 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'SD', 'sonarr', -90
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'SD'
    AND arr_type = 'sonarr'
);
-- --- END op 500

-- --- BEGIN op 501 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'VFF', 'radarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'VFF'
    AND arr_type = 'radarr'
);
-- --- END op 501

-- --- BEGIN op 502 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'VFF', 'sonarr', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'VFF'
    AND arr_type = 'sonarr'
);
-- --- END op 502

-- --- BEGIN op 503 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'VFQ', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'VFQ'
    AND arr_type = 'radarr'
);
-- --- END op 503

-- --- BEGIN op 504 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'VFQ', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'VFQ'
    AND arr_type = 'sonarr'
);
-- --- END op 504

-- --- BEGIN op 505 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'VO', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'VO'
    AND arr_type = 'radarr'
);
-- --- END op 505

-- --- BEGIN op 506 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'VO', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'VO'
    AND arr_type = 'sonarr'
);
-- --- END op 506

-- --- BEGIN op 507 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'VOSTFR', 'radarr', -150
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'radarr'
);
-- --- END op 507

-- --- BEGIN op 508 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'VOSTFR', 'sonarr', -150
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'sonarr'
);
-- --- END op 508

-- --- BEGIN op 509 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'WEB-DL', 'radarr', 70
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 509

-- --- BEGIN op 510 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'WEB-DL', 'sonarr', 70
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 510

-- --- BEGIN op 511 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'WEBRip', 'radarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 511

-- --- BEGIN op 512 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'WEBRip', 'sonarr', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 512

-- --- BEGIN op 513 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'Animés Team', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'Animés Team'
    AND arr_type = 'radarr'
);
-- --- END op 513

-- --- BEGIN op 514 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'Animés Team', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'Animés Team'
    AND arr_type = 'sonarr'
);
-- --- END op 514

-- --- BEGIN op 515 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'DV HDR', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'DV HDR'
    AND arr_type = 'radarr'
);
-- --- END op 515

-- --- BEGIN op 516 ( update quality_profile "Profilarr - Animés" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr - Animés', 'DV HDR', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr - Animés'
    AND custom_format_name = 'DV HDR'
    AND arr_type = 'sonarr'
);
-- --- END op 516

-- --- BEGIN op 517 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'DV HDR', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'DV HDR'
    AND arr_type = 'radarr'
);
-- --- END op 517

-- --- BEGIN op 518 ( update quality_profile "Profilarr" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Profilarr', 'DV HDR', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Profilarr'
    AND custom_format_name = 'DV HDR'
    AND arr_type = 'sonarr'
);
-- --- END op 518
