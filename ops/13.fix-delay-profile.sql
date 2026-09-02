-- @operation: export
-- @entity: batch
-- @name: fix delay profile
-- @exportedAt: 2026-09-02T08:00:31.886Z
-- @opIds: 563, 564, 567, 568, 569, 570

-- --- BEGIN op 563 ( update delay_profile "Standard Delay" )
update "delay_profiles" set "usenet_delay" = 60 where "name" = 'Standard Delay' and "usenet_delay" = 600;
-- --- END op 563

-- --- BEGIN op 564 ( update delay_profile "Standard Delay" )
update "delay_profiles" set "torrent_delay" = 60 where "name" = 'Standard Delay' and "torrent_delay" = 600;
-- --- END op 564

-- --- BEGIN op 567 ( update delay_profile "Standard Delay" )
update "delay_profiles" set "bypass_if_above_custom_format_score" = 1, "minimum_custom_format_score" = 20 where "name" = 'Standard Delay' and "bypass_if_above_custom_format_score" = 0 and "minimum_custom_format_score" is null;
-- --- END op 567

-- --- BEGIN op 568 ( update delay_profile "Standard Delay" )
update "delay_profiles" set "bypass_if_highest_quality" = 1 where "name" = 'Standard Delay' and "bypass_if_highest_quality" = 0;
-- --- END op 568

-- --- BEGIN op 569 ( update delay_profile "Standard Delay" )
update "delay_profiles" set "bypass_if_above_custom_format_score" = 0, "minimum_custom_format_score" = NULL where "name" = 'Standard Delay' and "bypass_if_above_custom_format_score" = 1 and "minimum_custom_format_score" = 20;
-- --- END op 569

-- --- BEGIN op 570 ( update delay_profile "Standard Delay" )
update "delay_profiles" set "bypass_if_above_custom_format_score" = 1, "minimum_custom_format_score" = 20 where "name" = 'Standard Delay' and "bypass_if_above_custom_format_score" = 0 and "minimum_custom_format_score" is null;
-- --- END op 570
