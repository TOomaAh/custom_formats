-- @operation: export
-- @entity: batch
-- @name: add regex
-- @exportedAt: 2026-08-25T22:10:39.196Z
-- @opIds: 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334

-- --- BEGIN op 304 ( create regular_expression "1080p" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('1080p', '\b(1080p)\b', NULL, NULL);
-- --- END op 304

-- --- BEGIN op 305 ( create regular_expression "480p" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('480p', '\b(480p|dvd)\b', NULL, NULL);
-- --- END op 305

-- --- BEGIN op 306 ( create regular_expression "576p" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('576p', '\b(576p)\b', NULL, NULL);

insert into "tags" ("name") values ('quality') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('576p', 'quality');
-- --- END op 306

-- --- BEGIN op 307 ( create regular_expression "720p" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('720p', '\b(720p)\b', NULL, NULL);

insert into "tags" ("name") values ('quality') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('720p', 'quality');
-- --- END op 307

-- --- BEGIN op 308 ( create regular_expression "AV1" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AV1', '\b(AV1)\b', NULL, NULL);
-- --- END op 308

-- --- BEGIN op 309 ( create regular_expression "Animés Teams" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Animés Teams', '\b(T3KASHI|KAF)\b', NULL, NULL);
-- --- END op 309

-- --- BEGIN op 310 ( create regular_expression "BluRay" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BluRay', '(?i)\b(BluRay|Blu-Ray|BDRip|BD-Rip|BDRemux|BD-Remux|REMUX|BDMux|BD25|BD50|BD66|BD100|BDSCR|COMPLETE\.BLURAY)\b', NULL, NULL);
-- --- END op 310

-- --- BEGIN op 311 ( create regular_expression "DV" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DV', '\b(DV)\b', NULL, NULL);
-- --- END op 311

-- --- BEGIN op 312 ( create regular_expression "ENGLISH" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ENGLISH', '\b(ENGLISH)\b', NULL, NULL);

insert into "tags" ("name") values ('language') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ENGLISH', 'language');
-- --- END op 312

-- --- BEGIN op 313 ( update regular_expression "480p" )
insert into "tags" ("name") values ('quality') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('480p', 'quality');
-- --- END op 313

-- --- BEGIN op 314 ( update regular_expression "1080p" )
insert into "tags" ("name") values ('quality') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('1080p', 'quality');
-- --- END op 314

-- --- BEGIN op 315 ( create regular_expression "FR+ ou +FR tag" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FR+ ou +FR tag', '(?i)\[[^\]]*(FR\+|\+FR)[^\]]*\]', NULL, NULL);
-- --- END op 315

-- --- BEGIN op 316 ( update regular_expression "FR+ ou +FR tag" )
insert into "tags" ("name") values ('language') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FR+ ou +FR tag', 'language');
-- --- END op 316

-- --- BEGIN op 317 ( create regular_expression "H264" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('H264', '(?i)\b(x264|x\.264|h264|h\.264|AVC|CAVS|AVCHD)\b', NULL, NULL);

insert into "tags" ("name") values ('codec') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('H264', 'codec');
-- --- END op 317

-- --- BEGIN op 318 ( create regular_expression "H265" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('H265', '\b(h265|x265|hevc|HEVC)\b', NULL, NULL);

insert into "tags" ("name") values ('codec') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('H265', 'codec');
-- --- END op 318

-- --- BEGIN op 319 ( create regular_expression "HDR" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HDR', '\b(HDR|HDR10|HDR10p|HDR10P)\b', NULL, NULL);

insert into "tags" ("name") values ('quality') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HDR', 'quality');
-- --- END op 319

-- --- BEGIN op 320 ( create regular_expression "HDTV" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HDTV', '(?i)\bHDTV\b', NULL, NULL);

insert into "tags" ("name") values ('source') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HDTV', 'source');
-- --- END op 320

-- --- BEGIN op 321 ( create regular_expression "Multi ou FR+ tag" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Multi ou FR+ tag', '(?i)(\bMULTI\b(?![ ._-]?sub(s)?)|\[[^\]]*(FR\+|\+FR)[^\]]*\])', NULL, NULL);

insert into "tags" ("name") values ('language') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Multi ou FR+ tag', 'language');
-- --- END op 321

-- --- BEGIN op 322 ( create regular_expression "Not Higher Version Repack Proper" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not Higher Version Repack Proper', '\b((repack|proper)[23])\b|\bREAL\.(REAL\.)?(PROPER|REPACK)\b', NULL, NULL);

insert into "tags" ("name") values ('version') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Not Higher Version Repack Proper', 'version');
-- --- END op 322

-- --- BEGIN op 323 ( create regular_expression "Not OK" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Not OK', '\b(NOK)\b', NULL, NULL);
-- --- END op 323

-- --- BEGIN op 324 ( create regular_expression "Repack Proper Rerip" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Repack Proper Rerip', '\b(Repack|Proper|Rerip)\b', NULL, NULL);
-- --- END op 324

-- --- BEGIN op 325 ( update regular_expression "Repack Proper Rerip" )
insert into "tags" ("name") values ('version') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Repack Proper Rerip', 'version');
-- --- END op 325

-- --- BEGIN op 326 ( create regular_expression "SD Title" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SD Title', '\b(sdtv)\b', NULL, NULL);

insert into "tags" ("name") values ('quality') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SD Title', 'quality');
-- --- END op 326

-- --- BEGIN op 327 ( create regular_expression "SUBFRENCH" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SUBFRENCH', '(?i)\b(SUBFRENCH)\b', NULL, NULL);
-- --- END op 327

-- --- BEGIN op 328 ( create regular_expression "TRUEFRENCH" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TRUEFRENCH', '(?i)\b(vff|vfi|vf2|french|truefrench)\b|\bvf\b(?!q)|\[fr\]', NULL, NULL);

insert into "tags" ("name") values ('language') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRUEFRENCH', 'language');
-- --- END op 328

-- --- BEGIN op 329 ( create regular_expression "Team HEVC" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Team HEVC', 'b(AvALoN)\b', 'Toutes les teams qui ne propose que de l''HEVC', NULL);
-- --- END op 329

-- --- BEGIN op 330 ( create regular_expression "VFQ" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VFQ', '\b(VFQ)\b', NULL, NULL);
-- --- END op 330

-- --- BEGIN op 331 ( create regular_expression "VO Tag" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VO Tag', '(?i)\b(VO|VOST|VOF)\b', NULL, NULL);
-- --- END op 331

-- --- BEGIN op 332 ( create regular_expression "VOSTFR" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VOSTFR', '\b(VOST.*?FR(E|A)?)\b', NULL, NULL);
-- --- END op 332

-- --- BEGIN op 333 ( create regular_expression "WEB-DL ou Service Streaming" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WEB-DL ou Service Streaming', '(?i)(\bWEB(-?DL)?\b(?!-?Rip)|\b(AMZN|ATV|ATVP|CC|DCU|DSNP|HMAX|HBO|Hulu|IT|Max|NF|PMTP|PCOK|PLAY|ROKU|SHO|STAN|SYFY)\b)', NULL, NULL);
-- --- END op 333

-- --- BEGIN op 334 ( create regular_expression "WEBRip" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WEBRip', '(?i)WEB-?Rip', NULL, NULL);
-- --- END op 334
