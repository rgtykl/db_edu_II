
CREATE TABLE student12.tb_books (
	id BIGSERIAL NOT NULL,
	writer_id BIGSERIAL NOT NULL,
	name VARCHAR NULL,
	count_of_page INT NULL,
	price NUMERIC(6, 2) NULL,
	CONSTRAINT pk_tb_books PRIMARY KEY (id)
);

COMMENT ON TABLE student12.tb_books IS 'Таблица с книгами';
COMMENT ON COLUMN student12.tb_books.id IS 'Идентификатор книги';
COMMENT ON COLUMN student12.tb_books.writer_id IS 'Идентификатор автора';
COMMENT ON COLUMN student12.tb_books."name" IS 'Название книги';
COMMENT ON COLUMN student12.tb_books.count_of_page IS 'Количество страниц';
COMMENT ON COLUMN student12.tb_books.price IS 'Цена';

ALTER TABLE student12.tb_books ADD CONSTRAINT fk_tb_books_writer_id FOREIGN KEY (writer_id) REFERENCES student12.tb_writers(id);