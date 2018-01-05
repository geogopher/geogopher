-- sample polygon data
INSERT INTO polygon_types (polygon_type_id,	polygon_type_name) VALUES (1, 'country');
INSERT INTO polygon_types (polygon_type_id,	polygon_type_name) VALUES (2, 'capital');
INSERT INTO polygon_types (polygon_type_id,	polygon_type_name) VALUES (3, 'state/province');
INSERT INTO polygon_types (polygon_type_id,	polygon_type_name) VALUES (4, 'neighborhood');


-- sample polygon data
INSERT INTO polygon_regions (polygon_region_id,	polygon_region_name) VALUES (1, 'North America');
INSERT INTO polygon_regions (polygon_region_id,	polygon_region_name) VALUES (2, 'South America');
INSERT INTO polygon_regions (polygon_region_id,	polygon_region_name) VALUES (3, 'Europe');
INSERT INTO polygon_regions (polygon_region_id,	polygon_region_name) VALUES (4, 'Africa');

-- sample polygon data
INSERT INTO polygons (polygon_id,	polygon_name,	coordinates,	polygon_accepted_names,	polygon_type_id, polygon_region_id) VALUES (1, 'Angola', '13.997499,-5.848612 16.579721,-5.900833 16.941668,-7.19861 17.624166,-8.098057 19.373056,-7.996111 19.53895,-6.996614 20.629747,-6.913881 20.548716,-7.283615 21.782961,-7.280842 21.790556,-9.405556 22.312223,-10.364445 22.253889,-11.209723 23.986208,-10.870461 24.020555,-13.00639 21.998335,-13.004168 22.000151,-16.171661 23.47611,-17.625835 23.284723,-17.662502 20.854166,-18.016392 18.915834,-17.815556 18.45154,-17.389835 13.993219,-17.423946 13.160555,-16.952778 11.752783,-17.254833 11.820833,-16.503056 11.810835,-15.993057 11.73139,-15.846668 12.509722,-13.42528 13.792501,-11.791668 13.773611,-10.684723 12.984446,-9.087502 13.39139,-8.387222 12.245001,-6.098055 13.178881,-5.856329 13.997499,-5.848612', '[Angola]', 1, 4);
INSERT INTO polygons (polygon_id,	polygon_name,	coordinates,	polygon_accepted_names,	polygon_type_id, polygon_region_id) VALUES (2, 'Bolivia', '-65.1902,-22.09473 -65.748062,-22.11167 -66.223007,-21.78052 -67.183624,-22.821667 -67.876404,-22.82806 -68.18861,-21.29695 -68.756958,-20.406948 -68.4375,-19.43028 -68.907791,-19.055279 -69.07167,-18.03889 -69.483612,-17.63556 -69.49972,-17.50528 -69.6189,-17.21472 -68.82251,-16.33972 -69.421951,-15.61806 -69.13695,-15.24583 -69.36639,-14.802502 -68.853058,-14.199167 -68.974457,-12.869722 -68.673904,-12.50115 -69.56844,-10.95109 -68.58345,-11.10614 -66.63444,-9.90695 -65.38196,-9.697779 -65.392792,-11.26639 -64.99167,-12.00806 -64.39418,-12.461668 -63.075005,-12.65 -61.83389,-13.54472 -61.03898,-13.49312 -60.47084,-13.80722 -60.2589,-15.09361 -60.571396,-15.0975 -60.16028,-16.26306 -58.32751,-16.27917 -58.397507,-17.249168 -57.743057,-17.593056 -57.521118,-18.20389 -58.121117,-19.74139 -57.848747,-19.978794 -58.15889,-20.168056 -58.15139,-19.828056 -59.09584,-19.34889 -61.7425,-19.645 -62.64377,-22.238903 -62.81195,-21.99695 -63.941116,-22.00083 -64.32472,-22.87361 -64.590561,-22.21472 -65.1902,-22.09473', '[Bolivia]', 1, 2);
INSERT INTO polygons (polygon_id,	polygon_name,	coordinates,	polygon_accepted_names,	polygon_type_id, polygon_region_id) VALUES (3, 'Germany', '10.979445,54.380556 10.818537,53.890055 12.526945,54.474161 12.924166,54.426943 12.369722,54.265001 13.02389,54.399721 13.455832,54.096109 13.718332,54.169718 13.813055,53.845278 14.275629,53.699068 14.149168,52.86278 14.640276,52.572496 14.599443,51.818605 15.03639,51.285555 14.828333,50.865831 14.309721,51.053606 12.093706,50.322535 12.674444,49.424997 13.833612,48.773607 12.758333,48.123888 13.016668,47.470278 12.735556,47.684168 11.095556,47.396112 10.478056,47.591944 10.173334,47.274721 9.566725,47.540453 8.566111,47.80694 8.576422,47.591372 7.697226,47.543329 7.58827,47.584482 7.57889,48.119722 8.22608,48.964418 6.362169,49.459391 6.524446,49.808611 6.134417,50.127848 6.398207,50.323175 6.011801,50.757273 5.864721,51.046106 6.222223,51.46583 5.9625,51.807779 6.82889,51.965555 7.065557,52.385828 6.68889,52.549166 7.051668,52.64361 7.208364,53.242807 7.015554,53.414721 7.295835,53.685274 8.008333,53.710001 8.503054,53.354166 8.665556,53.893885 9.832499,53.536386 8.899721,53.940828 8.883612,54.294168 8.599443,54.333887 9.016943,54.498331 8.580549,54.86788 8.281111,54.746943 8.393332,55.053057 8.664545,54.913095 9.44536,54.825403 9.972776,54.76111 9.870279,54.454439 10.979445,54.380556', '[Germany, Deutschland]', 1, 3);
INSERT INTO polygons (polygon_id,	polygon_name,	coordinates,	polygon_accepted_names,	polygon_type_id, polygon_region_id) VALUES (4, 'Netherlands', '6.871668,53.416109 7.208364,53.242807 7.051668,52.64361 6.68889,52.549166 7.065557,52.385828 6.82889,51.965555 5.9625,51.807779 6.222223,51.46583 5.864721,51.046106 6.011801,50.757273 5.640833,50.839724 5.849173,51.156382 5.041391,51.486666 4.252371,51.375147 3.440832,51.53583 4.286112,51.44861 3.687502,51.709719 4.167753,51.685572 3.865557,51.814997 4.584433,52.461504 5.424444,52.248606 5.533609,52.267221 5.624723,52.354166 5.774168,52.405275 5.878057,52.509439 5.855001,52.606913 5.599443,52.658609 5.599169,52.757776 5.718351,52.838022 5.368612,52.877779 5.420557,52.964441 5.364168,53.070276 5.100279,52.948053 5.304167,52.706942 5.033335,52.634165 5.028334,52.375834 4.58,52.471666 4.734167,52.955553 6.871668,53.416109', '[Netherlands, Holland]', 1, 3);

-- actual game data
INSERT INTO games (game_id, game_name, game_description, game_json, game_center_coords, game_zoom, max_count_polygons, base_time, img_asset) VALUES (1, 'World Countries', 'Master the locations of all 195 UN Member and Observer countries','https://s3.amazonaws.com/gopher-geofiles/geogophers-world-countries.json', '[30, 31]', 2, 195, 1560, 'https://s3.amazonaws.com/geogopher-assets/world-thumb.png');
INSERT INTO games (game_id, game_name, game_description, game_json, game_center_coords, game_zoom, max_count_polygons, base_time, img_asset) VALUES (2, 'Countries of Middle East & North Africa', 'Master the locations of all 22 UN Member and Observer countries','https://s3.amazonaws.com/gopher-geofiles/geogophers-game-middle-east-and-north-africa.json', '[27,30]', 4, 22, 168, 'https://s3.amazonaws.com/geogopher-assets/north-africa-and-middle-east-thumb.png');
INSERT INTO games (game_id, game_name, game_description, game_json, game_center_coords, game_zoom, max_count_polygons, base_time, img_asset) VALUES (3, 'Countries of Europe', 'Master the locations of all 44 UN Member and Observer countries','https://s3.amazonaws.com/gopher-geofiles/geogophers-game-europe.json', '[52,20]', 4, 44, 352, 'https://s3.amazonaws.com/geogopher-assets/europe-thumb.png');
INSERT INTO games (game_id, game_name, game_description, game_json, game_center_coords, game_zoom, max_count_polygons, base_time, img_asset) VALUES (4, 'Countries of Sub-Saharan Africa', 'Master the locations of all 50 UN Member and Observer countries','https://s3.amazonaws.com/gopher-geofiles/geogophers-game-sub-saharan-africa.json', '[0,25]', 4, 50, 400, 'https://s3.amazonaws.com/geogopher-assets/sub-saharan-africa-thumb.png');
INSERT INTO games (game_id, game_name, game_description, game_json, game_center_coords, game_zoom, max_count_polygons, base_time, img_asset) VALUES (5, 'Countries of Carribean', 'Master the locations of all 13 UN Member and Observer countries','https://s3.amazonaws.com/gopher-geofiles/geogophers-game-carribean.json', '[19,-72.416667]', 4, 13, 104, 'https://s3.amazonaws.com/geogopher-assets/carribean-thumb.png');
INSERT INTO games (game_id, game_name, game_description, game_json, game_center_coords, game_zoom, max_count_polygons, base_time, img_asset) VALUES (6, 'Countries of South America', 'Master the locations of all 12 UN Member and Observer countries','https://s3.amazonaws.com/gopher-geofiles/geogophers-game-south-america.json', '[-17,-65]', 3, 12, 96, 'https://s3.amazonaws.com/geogopher-assets/south-america-thumb.png');
INSERT INTO games (game_id, game_name, game_description, game_json, game_center_coords, game_zoom, max_count_polygons, base_time, img_asset) VALUES (7, 'Countries of Russia & Central Asia', 'Master the locations of all 9 UN Member and Observer countries','https://s3.amazonaws.com/gopher-geofiles/geogophers-game-russia-and-central-asia.json', '[48,68]', 4, 9, 72, 'https://s3.amazonaws.com/geogopher-assets/russia-and-central-asia-thumb.png');
INSERT INTO games (game_id, game_name, game_description, game_json, game_center_coords, game_zoom, max_count_polygons, base_time, img_asset) VALUES (8, 'Countries of South Pacific', 'Master the locations of all 13 UN Member and Observer countries','https://s3.amazonaws.com/gopher-geofiles/geogophers-game-south-pacific.json', '[-16,167]', 3, 13, 104, 'https://s3.amazonaws.com/geogopher-assets/south-pacific-thumb.png');
INSERT INTO games (game_id, game_name, game_description, game_json, game_center_coords, game_zoom, max_count_polygons, base_time, img_asset) VALUES (9, 'Countries of East Asia', 'Master the locations of all 23 UN Member and Observer countries','https://s3.amazonaws.com/gopher-geofiles/geogophers-game-east-asia.json', '[16.166667,107.833333]', 3, 23, 184, 'https://s3.amazonaws.com/geogopher-assets/east-asia-thumb.png');
INSERT INTO games (game_id, game_name, game_description, game_json, game_center_coords, game_zoom, max_count_polygons, base_time, img_asset) VALUES (10, 'Countries of North America', 'Master the locations of all 10 UN Member and Observer countries','https://s3.amazonaws.com/gopher-geofiles/geogophers-game-north-america.json', '[39.828175,-98.5795]', 3, 10, 80, 'https://s3.amazonaws.com/geogopher-assets/north-america-thumb.png');
INSERT INTO games (game_id, game_name, game_description, game_json, game_center_coords, game_zoom, max_count_polygons, base_time, img_asset) VALUES (11, 'World Capitals', 'Master the locations of all 195 UN Member and Observer capitals','https://s3.amazonaws.com/gopher-geofiles/geogophers-world-countries.json', '[30, 31]', 2, 195, 1560, 'https://s3.amazonaws.com/geogopher-assets/world-thumb.png');
INSERT INTO games (game_id, game_name, game_description, game_json, game_center_coords, game_zoom, max_count_polygons, base_time, img_asset) VALUES (12, 'Capitals of Middle East & North Africa', 'Master the locations of all 22 UN Member and Observer capitals','https://s3.amazonaws.com/gopher-geofiles/geogophers-game-middle-east-and-north-africa.json', '[27,30]', 4, 22, 168, 'https://s3.amazonaws.com/geogopher-assets/north-africa-and-middle-east-capitals-thumb.png');
INSERT INTO games (game_id, game_name, game_description, game_json, game_center_coords, game_zoom, max_count_polygons, base_time, img_asset) VALUES (13, 'Capitals of Europe', 'Master the locations of all 44 UN Member and Observer capitals','https://s3.amazonaws.com/gopher-geofiles/geogophers-game-europe.json', '[52,20]', 4, 44, 352, 'https://s3.amazonaws.com/geogopher-assets/europe-capitals-thumb.png');
INSERT INTO games (game_id, game_name, game_description, game_json, game_center_coords, game_zoom, max_count_polygons, base_time, img_asset) VALUES (14, 'Capitals of Sub-Saharan Africa', 'Master the locations of all 50 UN Member and Observer capitals','https://s3.amazonaws.com/gopher-geofiles/geogophers-game-sub-saharan-africa.json', '[0,25]', 4, 50, 400, 'https://s3.amazonaws.com/geogopher-assets/sub-saharan-africa-capitals-thumb.png');
INSERT INTO games (game_id, game_name, game_description, game_json, game_center_coords, game_zoom, max_count_polygons, base_time, img_asset) VALUES (15, 'Capitals of Carribean', 'Master the locations of all 13 UN Member and Observer capitals','https://s3.amazonaws.com/gopher-geofiles/geogophers-game-carribean.json', '[19,-72.416667]', 4, 13, 104, 'https://s3.amazonaws.com/geogopher-assets/carribean-capitals-thumb.png');
INSERT INTO games (game_id, game_name, game_description, game_json, game_center_coords, game_zoom, max_count_polygons, base_time, img_asset) VALUES (16, 'Capitals of South America', 'Master the locations of all 12 UN Member and Observer capitals','https://s3.amazonaws.com/gopher-geofiles/geogophers-game-south-america.json', '[-17,-65]', 3, 12, 96, 'https://s3.amazonaws.com/geogopher-assets/south-america-capitals-thumb.png');
INSERT INTO games (game_id, game_name, game_description, game_json, game_center_coords, game_zoom, max_count_polygons, base_time, img_asset) VALUES (17, 'Capitals of Russia & Central Asia', 'Master the locations of all 9 UN Member and Observer capitals','https://s3.amazonaws.com/gopher-geofiles/geogophers-game-russia-and-central-asia.json', '[48,68]', 4, 9, 72, 'https://s3.amazonaws.com/geogopher-assets/russia-and-central-asia-capitals-thumb.png');
INSERT INTO games (game_id, game_name, game_description, game_json, game_center_coords, game_zoom, max_count_polygons, base_time, img_asset) VALUES (18, 'Capitals of South Pacific', 'Master the locations of all 13 UN Member and Observer capitals','https://s3.amazonaws.com/gopher-geofiles/geogophers-game-south-pacific.json', '[-16,167]', 3, 13, 104, 'https://s3.amazonaws.com/geogopher-assets/south-pacific-capitals-thumb.png');
INSERT INTO games (game_id, game_name, game_description, game_json, game_center_coords, game_zoom, max_count_polygons, base_time, img_asset) VALUES (19, 'Capitals of East Asia', 'Master the locations of all 23 UN Member and Observer capitals','https://s3.amazonaws.com/gopher-geofiles/geogophers-game-east-asia.json', '[16.166667,107.833333]', 3, 23, 184, 'https://s3.amazonaws.com/geogopher-assets/east-asia-capitals-thumb.png');
INSERT INTO games (game_id, game_name, game_description, game_json, game_center_coords, game_zoom, max_count_polygons, base_time, img_asset) VALUES (20, 'Capitals of North America', 'Master the locations of all 10 UN Member and Observer capitals','https://s3.amazonaws.com/gopher-geofiles/geogophers-game-north-america.json', '[39.828175,-98.5795]', 3, 10, 80, 'https://s3.amazonaws.com/geogopher-assets/north-america-capitals-thumb.png');

-- actual game types
INSERT INTO game_types (game_type_id, game_type_name, game_type_description) VALUES (1, 'COUNTDOWN', 'Name as many selections as you can in any order!');
INSERT INTO game_types (game_type_id, game_type_name, game_type_description) VALUES (2, 'RANDOM SELECT', 'Get the answer right before advancing to the next one!');
INSERT INTO game_types (game_type_id, game_type_name, game_type_description) VALUES (3, 'GEOCLICK', 'Click the right selection based on the clue given');


-- actual game modes
INSERT INTO game_difficulties (game_difficulty_id, game_difficulty_name,	game_time_manipulation) VALUES (1, 'Easy', '{"multiplier": "1.5"}');
INSERT INTO game_difficulties (game_difficulty_id, game_difficulty_name,	game_time_manipulation) VALUES (2, 'Normal', '{"multiplier": "1.0"}');
INSERT INTO game_difficulties (game_difficulty_id, game_difficulty_name,	game_time_manipulation) VALUES (3, 'Hard', '{"multiplier": "0.5"}');
INSERT INTO game_difficulties (game_difficulty_id, game_difficulty_name,	game_time_manipulation) VALUES (4, '1 min', '{"override": "60"}');
INSERT INTO game_difficulties (game_difficulty_id, game_difficulty_name,	game_time_manipulation) VALUES (5, '3 min', '{"override": "180"}');
INSERT INTO game_difficulties (game_difficulty_id, game_difficulty_name,	game_time_manipulation) VALUES (6, '5 min', '{"override": "300"}');
INSERT INTO game_difficulties (game_difficulty_id, game_difficulty_name,	game_time_manipulation) VALUES (7, '10 min', '{"override": "600"}');

-- sample user data
INSERT INTO users (user_id, google_id,	username, password_hash, password_salt,	count_games_played,	last_login,	is_first_login, first_name, last_name, email, user_ip, token, anonymous_user) VALUES (default, 'null', 'countrygal500', 'a8d8c7ddd6s62', 'sdf98SDF98+sdf1', 0, '2017-11-11 10:23:54+02', TRUE, 'Hannah', 'Arendt', 'iknowthings@manythings.com', '1.127.23.34', '4bDac45deUys', default);
INSERT INTO users (user_id, google_id,	username, password_hash, password_salt,	count_games_played,	last_login,	is_first_login, first_name, last_name, email, user_ip, token, anonymous_user) VALUES (default, 'null', 'ramblinman20', 'a8d8c7ddd6s62', 'sdf98SDF98+sdf1', 6, '2017-11-10 10:23:54+02', FALSE, 'Carl', 'Jung', 'gottawrite@wuzzlyfe.com', '1.127.23.34', '4bDac45deUys', default);
INSERT INTO users (user_id, google_id,	username, password_hash, password_salt,	count_games_played,	last_login,	is_first_login, first_name, last_name, email, user_ip, token, anonymous_user) VALUES (default, 'null', 'bigponderer77', 'a8d8c7ddd6s62', 'sdf98SDF98+sdf1', 12, '2017-11-09 10:23:54+02', FALSE, 'Seneca', 'TheYounger', 'bigponderer77@romansthink.com', '1.127.23.34', '4bDac45deUys', default);
INSERT INTO users (user_id, google_id,	username, password_hash, password_salt,	count_games_played,	last_login,	is_first_login, first_name, last_name, email, user_ip, token, anonymous_user) VALUES (default, 'null', 'someusername55', 'null', 'null', 467, '2017-11-08 10:23:54+02', FALSE, 'null', 'null', 'null', '1.127.23.34', 'null', TRUE);