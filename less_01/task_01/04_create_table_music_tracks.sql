
CREATE TABLE IF NOT EXISTS student12.tb_music_tracks (
	id BIGSERIAL NOT NULL,
	album_id BIGSERIAL NOT NULL,
	name VARCHAR NULL,
	time INT NULL,
	number_plays BIGINT NULL,
	CONSTRAINT pk_music_tracks PRIMARY KEY (id)
);

COMMENT ON TABLE student12.tb_music_tracks IS 'Таблица с треками';
COMMENT ON COLUMN student12.tb_music_tracks.id IS 'Идентификатор трека';
COMMENT ON COLUMN student12.tb_music_tracks.album_id IS 'Идентификатор альбома';
COMMENT ON COLUMN student12.tb_music_tracks."name" IS 'Наименование трека';
COMMENT ON COLUMN student12.tb_music_tracks."time" IS 'Время';
COMMENT ON COLUMN student12.tb_music_tracks.number_plays IS 'Количество прослушиваний';

ALTER TABLE student12.tb_music_tracks ADD CONSTRAINT fk_tb_music_tracks_album_id FOREIGN KEY (album_id) REFERENCES student12.tb_albums(id);