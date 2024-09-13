CREATE TABLE IF NOT EXISTS student12.tb_genres (
	id BIGSERIAL NOT NULL,
	name VARCHAR NULL,
	CONSTRAINT pk_tb_genres PRIMARY KEY (id)
);

COMMENT ON TABLE student12.tb_genres IS 'Таблица с жанрами';
COMMENT ON COLUMN student12.tb_genres.id IS 'Идентификатор жанра';
COMMENT ON COLUMN student12.tb_genres.name IS 'Наименование жанра';