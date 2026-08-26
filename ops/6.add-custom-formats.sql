-- @operation: export
-- @entity: batch
-- @name: add custom formats
-- @exportedAt: 2026-08-26T08:38:19.664Z
-- @opIds: 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425

-- --- BEGIN op 342 ( create custom_format "1080p" )
insert into "custom_formats" ("name", "description") values ('1080p', '');
-- --- END op 342

-- --- BEGIN op 343 ( update custom_format "1080p" )
update "custom_formats" set "include_in_rename" = 1 where "name" = '1080p' and "include_in_rename" = 0;
-- --- END op 343

-- --- BEGIN op 344 ( update custom_format "1080p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p', '1080p', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p', '1080p', '1080p');
-- --- END op 344

-- --- BEGIN op 345 ( update custom_format "1080p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p', 'New Condition', 'resolution', 'all', 0, 0);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('1080p', 'New Condition', '1080p');
-- --- END op 345

-- --- BEGIN op 346 ( update custom_format "1080p" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p'
	  AND name = 'New Condition'
	  AND type = 'resolution'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 346

-- --- BEGIN op 347 ( update custom_format "1080p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p', 'Resolution', 'resolution', 'all', 0, 0);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('1080p', 'Resolution', '1080p');
-- --- END op 347

-- --- BEGIN op 348 ( create custom_format "480p" )
insert into "custom_formats" ("name", "description") values ('480p', '');
-- --- END op 348

-- --- BEGIN op 349 ( update custom_format "480p" )
update "custom_formats" set "include_in_rename" = 1 where "name" = '480p' and "include_in_rename" = 0;
-- --- END op 349

-- --- BEGIN op 350 ( update custom_format "1080p" )
update "custom_formats" set "include_in_rename" = 0 where "name" = '1080p' and "include_in_rename" = 1;
-- --- END op 350

-- --- BEGIN op 351 ( update custom_format "480p" )
update "custom_formats" set "include_in_rename" = 0 where "name" = '480p' and "include_in_rename" = 1;
-- --- END op 351

-- --- BEGIN op 352 ( update custom_format "480p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('480p', 'Title', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('480p', 'Title', '480p');
-- --- END op 352

-- --- BEGIN op 353 ( update custom_format "480p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('480p', 'Resolution', 'resolution', 'all', 0, 0);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('480p', 'Resolution', '480p');
-- --- END op 353

-- --- BEGIN op 354 ( update custom_format "480p" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '480p'
	  AND name = 'Title'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 354

-- --- BEGIN op 355 ( update custom_format "480p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('480p', '480p', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('480p', '480p', '480p');
-- --- END op 355

-- --- BEGIN op 356 ( create custom_format "576p" )
insert into "custom_formats" ("name", "description") values ('576p', '');
-- --- END op 356

-- --- BEGIN op 357 ( update custom_format "576p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('576p', '576p', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('576p', '576p', '576p');
-- --- END op 357

-- --- BEGIN op 358 ( update custom_format "576p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('576p', 'Resolution', 'resolution', 'all', 0, 0);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('576p', 'Resolution', '576p');
-- --- END op 358

-- --- BEGIN op 359 ( create custom_format "720p" )
insert into "custom_formats" ("name", "description") values ('720p', '');
-- --- END op 359

-- --- BEGIN op 360 ( update custom_format "720p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p', 'Resolution', 'resolution', 'all', 0, 0);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('720p', 'Resolution', '720p');
-- --- END op 360

-- --- BEGIN op 361 ( update custom_format "720p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p', '720p', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p', '720p', '720p');
-- --- END op 361

-- --- BEGIN op 362 ( create custom_format "AV1" )
insert into "custom_formats" ("name", "description") values ('AV1', '');
-- --- END op 362

-- --- BEGIN op 363 ( update custom_format "AV1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('AV1', 'AV1', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('AV1', 'AV1', 'AV1');
-- --- END op 363

-- --- BEGIN op 364 ( create custom_format "Animés Team" )
insert into "custom_formats" ("name", "description") values ('Animés Team', '');
-- --- END op 364

-- --- BEGIN op 365 ( update custom_format "Animés Team" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Animés Team', 'Animés Team', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Animés Team', 'Animés Team', 'Animés Teams');
-- --- END op 365

-- --- BEGIN op 366 ( create custom_format "BluRay" )
insert into "custom_formats" ("name", "description") values ('BluRay', '');
-- --- END op 366

-- --- BEGIN op 367 ( update custom_format "BluRay" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('BluRay', 'BluRay', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('BluRay', 'BluRay', 'BluRay');
-- --- END op 367

-- --- BEGIN op 368 ( create custom_format "DV HDR" )
insert into "custom_formats" ("name", "description") values ('DV HDR', '');
-- --- END op 368

-- --- BEGIN op 369 ( update custom_format "DV HDR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DV HDR', 'HDR', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DV HDR', 'HDR', 'HDR');
-- --- END op 369

-- --- BEGIN op 370 ( update custom_format "DV HDR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DV HDR', 'DV', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DV HDR', 'DV', 'DV');
-- --- END op 370

-- --- BEGIN op 371 ( create custom_format "H264" )
insert into "custom_formats" ("name", "description") values ('H264', '');
-- --- END op 371

-- --- BEGIN op 372 ( update custom_format "H264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('H264', 'H264', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('H264', 'H264', 'H264');
-- --- END op 372

-- --- BEGIN op 373 ( update custom_format "H264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('H264', 'Not HEVC', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('H264', 'Not HEVC', 'H265');
-- --- END op 373

-- --- BEGIN op 374 ( update custom_format "H264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('H264', 'Not AV1', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('H264', 'Not AV1', 'AV1');
-- --- END op 374

-- --- BEGIN op 375 ( create custom_format "HDTV" )
insert into "custom_formats" ("name", "description") values ('HDTV', '');
-- --- END op 375

-- --- BEGIN op 376 ( update custom_format "HDTV" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HDTV', 'HDTV', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HDTV', 'HDTV', 'HDTV');
-- --- END op 376

-- --- BEGIN op 377 ( create custom_format "HEVC" )
insert into "custom_formats" ("name", "description") values ('HEVC', '');
-- --- END op 377

-- --- BEGIN op 378 ( update custom_format "HEVC" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'HEVC' and "include_in_rename" = 0;
-- --- END op 378

-- --- BEGIN op 379 ( update custom_format "HEVC" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HEVC', 'HEVC', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HEVC', 'HEVC', 'H265');
-- --- END op 379

-- --- BEGIN op 380 ( update custom_format "HEVC" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HEVC', 'Teams', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HEVC', 'Teams', 'Team HEVC');
-- --- END op 380

-- --- BEGIN op 381 ( create custom_format "Multi-Audio" )
insert into "custom_formats" ("name", "description") values ('Multi-Audio', '');
-- --- END op 381

-- --- BEGIN op 382 ( update custom_format "Multi-Audio" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'Multi-Audio' and "include_in_rename" = 0;
-- --- END op 382

-- --- BEGIN op 383 ( update custom_format "Multi-Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Multi-Audio', 'Multi ou FR+ tag', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Multi-Audio', 'Multi ou FR+ tag', 'Multi ou FR+ tag');
-- --- END op 383

-- --- BEGIN op 384 ( update custom_format "Multi-Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Multi-Audio', 'Not VOSTFR', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Multi-Audio', 'Not VOSTFR', 'VOSTFR');
-- --- END op 384

-- --- BEGIN op 385 ( update custom_format "Multi-Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Multi-Audio', 'Not VO', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Multi-Audio', 'Not VO', 'VO Tag');
-- --- END op 385

-- --- BEGIN op 386 ( update custom_format "Multi-Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Multi-Audio', 'Not FR Uniquement', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Multi-Audio', 'Not FR Uniquement', '[FR] seul');
-- --- END op 386

-- --- BEGIN op 387 ( create custom_format "Not OK" )
insert into "custom_formats" ("name", "description") values ('Not OK', '');
-- --- END op 387

-- --- BEGIN op 388 ( update custom_format "Not OK" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not OK', 'Not OK', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Not OK', 'Not OK', 'Not OK');
-- --- END op 388

-- --- BEGIN op 389 ( create custom_format "Repack Proper" )
insert into "custom_formats" ("name", "description") values ('Repack Proper', '');
-- --- END op 389

-- --- BEGIN op 390 ( update custom_format "Repack Proper" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Repack Proper', 'Not Higher Version Repack Proper', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Repack Proper', 'Not Higher Version Repack Proper', 'Not Higher Version Repack Proper');
-- --- END op 390

-- --- BEGIN op 391 ( update custom_format "Repack Proper" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Repack Proper', 'Repack Proper Rerip', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Repack Proper', 'Repack Proper Rerip', 'Repack Proper Rerip');
-- --- END op 391

-- --- BEGIN op 392 ( create custom_format "SD" )
insert into "custom_formats" ("name", "description") values ('SD', '');
-- --- END op 392

-- --- BEGIN op 393 ( update custom_format "SD" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SD', '360p', 'resolution', 'all', 0, 0);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('SD', '360p', '360p');
-- --- END op 393

-- --- BEGIN op 394 ( update custom_format "SD" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('SD', 'SD', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SD', 'SD', 'SD Title');
-- --- END op 394

-- --- BEGIN op 395 ( create custom_format "VFF" )
insert into "custom_formats" ("name", "description") values ('VFF', '');
-- --- END op 395

-- --- BEGIN op 396 ( update custom_format "VFF" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'VFF' and "include_in_rename" = 0;
-- --- END op 396

-- --- BEGIN op 397 ( update custom_format "VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VFF', 'VFF', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VFF', 'VFF', 'TRUEFRENCH');
-- --- END op 397

-- --- BEGIN op 398 ( update custom_format "VFF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VFF', 'Not MULTI', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VFF', 'Not MULTI', 'Multi ou FR+ tag');
-- --- END op 398

-- --- BEGIN op 399 ( create custom_format "VFQ" )
insert into "custom_formats" ("name", "description") values ('VFQ', '');
-- --- END op 399

-- --- BEGIN op 400 ( update custom_format "VFQ" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VFQ', 'VFQ', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VFQ', 'VFQ', 'VFQ');
-- --- END op 400

-- --- BEGIN op 401 ( create custom_format "VO" )
insert into "custom_formats" ("name", "description") values ('VO', '');
-- --- END op 401

-- --- BEGIN op 402 ( update custom_format "VO" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VO', 'VO Tag', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VO', 'VO Tag', 'VO Tag');
-- --- END op 402

-- --- BEGIN op 403 ( update custom_format "VO" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VO', 'Not multi', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VO', 'Not multi', 'Multi ou FR+ tag');
-- --- END op 403

-- --- BEGIN op 404 ( update custom_format "VO" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VO', 'Not VFF', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VO', 'Not VFF', 'TRUEFRENCH');
-- --- END op 404

-- --- BEGIN op 405 ( update custom_format "VO" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VO', 'Not FR Tag', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VO', 'Not FR Tag', 'FR+ ou +FR tag');
-- --- END op 405

-- --- BEGIN op 406 ( update custom_format "VO" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VO', 'Not VOSTFR', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VO', 'Not VOSTFR', 'VOSTFR');
-- --- END op 406

-- --- BEGIN op 407 ( update custom_format "VO" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VO', 'Not SUBFRENCH', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VO', 'Not SUBFRENCH', 'SUBFRENCH');
-- --- END op 407

-- --- BEGIN op 408 ( update custom_format "VO" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'VO' and "include_in_rename" = 0;
-- --- END op 408

-- --- BEGIN op 409 ( create custom_format "VOSTFR" )
insert into "custom_formats" ("name", "description") values ('VOSTFR', '');
-- --- END op 409

-- --- BEGIN op 410 ( update custom_format "VOSTFR" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'VOSTFR' and "include_in_rename" = 0;
-- --- END op 410

-- --- BEGIN op 411 ( update custom_format "VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VOSTFR', 'VOSTFR', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VOSTFR', 'VOSTFR', 'VOSTFR');
-- --- END op 411

-- --- BEGIN op 412 ( update custom_format "VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VOSTFR', 'SUBFRENCH', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VOSTFR', 'SUBFRENCH', 'SUBFRENCH');
-- --- END op 412

-- --- BEGIN op 413 ( update custom_format "VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VOSTFR', 'French', 'language', 'all', 0, 0);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('VOSTFR', 'French', 'French', 1);
-- --- END op 413

-- --- BEGIN op 414 ( update custom_format "VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VOSTFR', 'ENGLISH', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VOSTFR', 'ENGLISH', 'ENGLISH');
-- --- END op 414

-- --- BEGIN op 415 ( update custom_format "VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VOSTFR', 'TRUEFRENCH', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VOSTFR', 'TRUEFRENCH', 'TRUEFRENCH');
-- --- END op 415

-- --- BEGIN op 416 ( create custom_format "WEB-DL" )
insert into "custom_formats" ("name", "description") values ('WEB-DL', '');
-- --- END op 416

-- --- BEGIN op 417 ( update custom_format "WEB-DL" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'WEB-DL' and "include_in_rename" = 0;
-- --- END op 417

-- --- BEGIN op 418 ( update custom_format "WEB-DL" )
update "custom_formats" set "include_in_rename" = 0 where "name" = 'WEB-DL' and "include_in_rename" = 1;
-- --- END op 418

-- --- BEGIN op 419 ( update custom_format "WEB-DL" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEB-DL', 'WEB-DL or Streaming Service', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WEB-DL', 'WEB-DL or Streaming Service', 'WEB-DL ou Service Streaming');
-- --- END op 419

-- --- BEGIN op 420 ( update custom_format "WEB-DL" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEB-DL', 'Not Webrip', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WEB-DL', 'Not Webrip', 'WEBRip');
-- --- END op 420

-- --- BEGIN op 421 ( update custom_format "WEB-DL" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEB-DL', 'Not Bluray', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WEB-DL', 'Not Bluray', 'BluRay');
-- --- END op 421

-- --- BEGIN op 422 ( update custom_format "WEB-DL" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEB-DL', 'Not HDTV', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WEB-DL', 'Not HDTV', 'HDTV');
-- --- END op 422

-- --- BEGIN op 423 ( update custom_format "WEB-DL" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEB-DL', 'Not DVD', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WEB-DL', 'Not DVD', 'SD Title');
-- --- END op 423

-- --- BEGIN op 424 ( create custom_format "WEBRip" )
insert into "custom_formats" ("name", "description") values ('WEBRip', '');
-- --- END op 424

-- --- BEGIN op 425 ( update custom_format "WEBRip" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEBRip', 'WEBRip', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WEBRip', 'WEBRip', 'WEBRip');
-- --- END op 425
