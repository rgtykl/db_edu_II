
CREATE table IF NOT EXISTS student12.tb_books (
	id BIGSERIAL NOT NULL,
	writer_id BIGSERIAL NOT NULL,
	name VARCHAR NULL,
	count_of_page INT NULL,
	count_of_download INT NULL,
	year INT NULL,
	genre VARCHAR NULL,
	price NUMERIC(6, 2) NULL
)PARTITION BY RANGE (count_of_download);

COMMENT ON TABLE student12.tb_books IS 'Таблица с книгами';
COMMENT ON COLUMN student12.tb_books.id IS 'Идентификатор книги';
COMMENT ON COLUMN student12.tb_books.writer_id IS 'Идентификатор автора';
COMMENT ON COLUMN student12.tb_books."name" IS 'Название книги';
COMMENT ON COLUMN student12.tb_books.count_of_page IS 'Количество страниц';
COMMENT ON COLUMN student12.tb_books.count_of_download IS 'Количество скачиваний';
COMMENT ON COLUMN student12.tb_books.genre IS 'Жанр';
COMMENT ON COLUMN student12.tb_books.price IS 'Цена';

ALTER TABLE student12.tb_books ADD CONSTRAINT fk_tb_books_writer_id FOREIGN KEY (writer_id) REFERENCES student12.tb_writers(id);


CREATE TABLE IF NOT EXISTS student12.tb_books_0_1000 PARTITION OF student12.tb_books
    FOR VALUES FROM (0) TO (1000);
CREATE TABLE IF NOT EXISTS student12.tb_books_1000_10000 PARTITION OF student12.tb_books
    FOR VALUES FROM (1000) TO (10000);
CREATE TABLE IF NOT EXISTS student12.tb_books_10000 PARTITION OF student12.tb_books
    FOR VALUES FROM (10000)TO (2147483647);