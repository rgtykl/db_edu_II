INSERT INTO student12.tb_writers (name, date_of_birth)
VALUES ('Митио Каку',  '12.01.1987'),
('Ричард Докинз',  '11.02.1988'),
('Ричард Фейнман',  '10.08.1822'),
('Юрий Тыньянов',  '02.12.1888'),
('Акадий и Борис Стругацкие',  '11.02.1978');


INSERT INTO student12.tb_books (writer_id, name, count_of_page, count_of_download, year, genre)
VALUES
((Select id FROM student12.tb_writers where name = 'Митио Каку'),  'Физика невозможного', 460, 2000, 2008,'Non-fiction'),
((Select id FROM student12.tb_writers where name = 'Ричард Докинз'),  'Эгоистичный ген', 610, 400, 1989, 'Non-fiction'),
((Select id FROM student12.tb_writers where name = 'Ричард Фейнман'),  'Вы, конечно шутите,  мистер Фейнман!', 450, 1000, 1985, 'Non-fiction'),
((Select id FROM student12.tb_writers where name = 'Юрий Тыньянов'),  'Кюхля', 350, 2300, 1925, 'Исторический роман'),
((Select id FROM student12.tb_writers where name = 'Акадий и Борис Стругацкие'),  'За миллиард лет до конца света', 150, 20000, 1977, 'Фантастика'),
((Select id FROM student12.tb_writers where name = 'Акадий и Борис Стругацкие'),  'Понедельник начинается в субботу', 250, 21000, 1964, 'Фантастика'),
((Select id FROM student12.tb_writers where name = 'Митио Каку'),  'Управление Бога. В поисках теории всего', 200, 1700, 2021,'Non-fiction')



INSERT INTO student12.tb_writers (name, date_of_birth)
VALUES ('Борис Пастернак',  '12.01.1987')

INSERT INTO student12.tb_books (writer_id, name, count_of_page, count_of_download, year, genre)
VALUES
((Select id FROM student12.tb_writers where name = 'Борис Пастернак'),  'Доктор Живаго', 660, 20300, 1955, NULL)