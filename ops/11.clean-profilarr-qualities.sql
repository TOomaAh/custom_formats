-- @operation: export
-- @entity: batch
-- @name: clean profilarr qualities
-- @exportedAt: 2026-08-26T20:19:07.080Z
-- @opIds: 532

-- --- BEGIN op 532 ( update quality_profile "Profilarr" )
UPDATE quality_profile_qualities
SET position = 1
WHERE quality_profile_name = 'Profilarr'
  AND quality_group_name = '720p'
  AND quality_name IS NULL
  AND position = 6
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 2
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 3
WHERE quality_profile_name = 'Profilarr'
  AND quality_group_name = '480p'
  AND quality_name IS NULL
  AND position = 8
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 0
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = 'Profilarr'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 0
WHERE quality_profile_name = 'Profilarr'
  AND quality_group_name = '1080p'
  AND quality_name IS NULL
  AND position = 5
  AND enabled = 1
  AND upgrade_until = 1;
-- --- END op 532
