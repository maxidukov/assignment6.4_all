INSERT INTO music_site.Artists VALUES (DEFAULT, 'The Beatles');
INSERT INTO music_site.Artists VALUES (DEFAULT, 'The Who');
INSERT INTO music_site.Artists VALUES (DEFAULT, 'Duran Duran');
INSERT INTO music_site.Artists VALUES (DEFAULT, 'King Crimson');
INSERT INTO music_site.Artists VALUES (DEFAULT, 'X');

INSERT INTO music_site.Genres VALUES (DEFAULT, 'rock-n-roll');
INSERT INTO music_site.Genres VALUES (DEFAULT, 'rock');
INSERT INTO music_site.Genres VALUES (DEFAULT, 'roll');

INSERT INTO music_site.Albums VALUES (DEFAULT, 'Crimson Beatles', 2019);
INSERT INTO music_site.Albums VALUES (DEFAULT, 'Crimson Who', 2020);
INSERT INTO music_site.Albums VALUES (DEFAULT, 'King Duran', 2016);
INSERT INTO music_site.Albums VALUES (DEFAULT, 'Xtra', 2010);

INSERT INTO music_site.Tracks VALUES (DEFAULT, 'Hahaha', 1, INTERVAL '10m');
INSERT INTO music_site.Tracks VALUES (DEFAULT, 'Ladeedah', 2, INTERVAL '1m 12s');
INSERT INTO music_site.Tracks VALUES (DEFAULT, 'Cooticoo', 3, INTERVAL '2m 59s');
INSERT INTO music_site.Tracks VALUES (DEFAULT, 'Abracadabra', 3, INTERVAL '1h 3m 66s');
INSERT INTO music_site.Tracks VALUES (DEFAULT, 'Shalala', 1, INTERVAL '5m 7s');
INSERT INTO music_site.Tracks VALUES (DEFAULT, 'My Boom', 4, INTERVAL '1s');

INSERT INTO music_site.Compilations VALUES (DEFAULT, 'Best of the Best', 2020);
INSERT INTO music_site.Compilations VALUES (DEFAULT, 'Best of the Worst', 2024);
INSERT INTO music_site.Compilations VALUES (DEFAULT, 'Worst of the Best', 2023);
INSERT INTO music_site.Compilations VALUES (DEFAULT, 'Worst of the Worst', 2023);

INSERT INTO music_site.ArtistsGenres VALUES (1, 1);
INSERT INTO music_site.ArtistsGenres VALUES (2, 2);
INSERT INTO music_site.ArtistsGenres VALUES (3, 3);
INSERT INTO music_site.ArtistsGenres VALUES (4, 2);
INSERT INTO music_site.ArtistsGenres VALUES (1, 3);

INSERT INTO music_site.ArtistsAlbums VALUES (1, 1);
INSERT INTO music_site.ArtistsAlbums VALUES (4, 1);
INSERT INTO music_site.ArtistsAlbums VALUES (2, 2);
INSERT INTO music_site.ArtistsAlbums VALUES (4, 2);
INSERT INTO music_site.ArtistsAlbums VALUES (3, 3);
INSERT INTO music_site.ArtistsAlbums VALUES (4, 3);
INSERT INTO music_site.ArtistsAlbums VALUES (5, 4);

INSERT INTO music_site.TracksCompilations VALUES (1, 1);
INSERT INTO music_site.TracksCompilations VALUES (2, 1);
INSERT INTO music_site.TracksCompilations VALUES (3, 1);
INSERT INTO music_site.TracksCompilations VALUES (2, 2);
INSERT INTO music_site.TracksCompilations VALUES (3, 2);
INSERT INTO music_site.TracksCompilations VALUES (4, 2);
INSERT INTO music_site.TracksCompilations VALUES (3, 3);
INSERT INTO music_site.TracksCompilations VALUES (4, 3);
INSERT INTO music_site.TracksCompilations VALUES (5, 3);
INSERT INTO music_site.TracksCompilations VALUES (4, 4);
INSERT INTO music_site.TracksCompilations VALUES (5, 4);
INSERT INTO music_site.TracksCompilations VALUES (1, 4);
