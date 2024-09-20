--SELECT * from student12.tb_artists
INSERT INTO student12.tb_artists (name) VALUES
('Запевун1'),
('Запевун2'),
('Запевун3');

--SELECT * from student12.tb_genres
INSERT INTO student12.tb_genres (name) VALUES
('Рок'),
('Поп'),
('Другое');

--SELECT * from student12.tb_albums
INSERT INTO student12.tb_albums (artist_id, "name", genre_id, "year") VALUES
((select id from student12.tb_artists where name = 'Запевун1'),
'ЛучшийАльбом',
(select id from student12.tb_genres where name = 'Рок'),
'2016');

--SELECT * from student12.tb_music_tracks
INSERT INTO student12.tb_music_tracks (album_id, "name", time, number_plays) values
((select id from student12.tb_albums where name = 'ЛучшийАльбом'),
'Крутой трек',
3232,
2),
((select id from student12.tb_albums where name = 'ЛучшийАльбом'),
'Норм трек',
344,
55),
((select id from student12.tb_albums where name = 'ЛучшийАльбом'),
'Другой трек',
76,
1),
((select id from student12.tb_albums where name = 'ЛучшийАльбом'),
'Этот трек',
34,
777);


