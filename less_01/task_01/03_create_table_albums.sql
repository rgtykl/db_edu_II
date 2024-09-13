
CREATE TABLE IF NOT EXISTS student12.tb_albums (
	id BIGSERIAL NOT NULL,
	artist_id BIGSERIAL NOT NULL,
	name VARCHAR NULL,
	genre_id BIGSERIAL NOT NULL,
	year INT NULL,
	CONSTRAINT pk_tb_albums PRIMARY KEY (id)
);

COMMENT ON TABLE student12.tb_albums IS 'Таблица с альбомами';
COMMENT ON COLUMN student12.tb_albums.id IS 'Идентификатор альбома';
COMMENT ON COLUMN student12.tb_albums.artist_id IS 'Идентификатор артиста';
COMMENT ON COLUMN student12.tb_albums."name" IS 'Наименование альбома';
COMMENT ON COLUMN student12.tb_albums.genre_id IS 'Идентификатор жанра';
COMMENT ON COLUMN student12.tb_albums."year" IS 'Год выпуска';


ALTER TABLE student12.tb_albums ADD CONSTRAINT fk_tb_albums_artist_id FOREIGN KEY (artist_id) REFERENCES student12.tb_artists(id);
ALTER TABLE student12.tb_albums ADD CONSTRAINT fk_tb_albums_genre_id FOREIGN KEY (genre_id) REFERENCES student12.tb_genres(id);