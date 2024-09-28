INSERT INTO student12.tb_writers (first_name, year, genre_id, director_id, age_rating, rating, views)
VALUES (



INSERT INTO student12.tb_films (name, year, genre_id, director_id, age_rating, rating, views)
VALUES (
                                                                                                   'Паразиты',
                                                                                                   2019,
                                                                                                   (SELECT genre_id FROM student25.tb_genres WHERE name='триллер'),
                                                                                                   (SELECT director_id FROM student25.tb_directors WHERE name='Пон Джун-хо'),
                                                                                                   '18+',
                                                                                                   8.0,
                                                                                                1000
                                                                                               ),
                                                                                               (
                                                                                                    'Минари',
                                                                                                    2020,
                                                                                                    (SELECT genre_id FROM student25.tb_genres WHERE name='драма'),
                                                                                                    (SELECT director_id FROM student25.tb_directors WHERE name='Ли Айзек Чун'),
                                                                                                    '16+',
                                                                                                    6.9,
                                                                                                    2000
                                                                                                ),
                                                                                                (
                                                                                                   'Воспоминания об убийстве',
                                                                                                   2003,
                                                                                                   (SELECT genre_id FROM student25.tb_genres WHERE name='детектив'),
                                                                                                   (SELECT director_id FROM student25.tb_directors WHERE name='Пон Джун-хо'),
                                                                                                   '18+',
                                                                                                   7.7,
                                                                                                    2000
                                                                                               ),
                                                                                               (
                                                                                                   'Левиафан', 2014,
                                                                                                   (SELECT genre_id FROM student25.tb_genres WHERE name='драма'),
                                                                                                   (SELECT director_id FROM student25.tb_directors WHERE name='Андрей Звягинцев'),
                                                                                                   '18+',
                                                                                                   6.9,
                                                                                                   10000
                                                                                                   ),
                                                                                               (
                                                                                                  'Солярис', 1972,
                                                                                                  (SELECT genre_id FROM student25.tb_genres WHERE name='фантастика'),
                                                                                                  (SELECT director_id FROM student25.tb_directors WHERE name='Андрей Тарковский'),
                                                                                                  '12+',
                                                                                                  8.0,
                                                                                                 15000
                                                                                              );

