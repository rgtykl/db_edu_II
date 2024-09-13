
CREATE TABLE IF NOT EXISTS student12.tb_artists (
	id BIGSERIAL NOT NULL,
	name VARCHAR NULL,
	CONSTRAINT pk_tb_artists PRIMARY KEY (id)
);

COMMENT ON TABLE student12.tb_artists IS 'Таблица с артистами';
COMMENT ON COLUMN student12.tb_artists.id IS 'Идентификатор артиста';
COMMENT ON COLUMN student12.tb_artists.name IS 'Имя артиста';