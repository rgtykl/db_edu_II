CREATE TABLE student12.tb_writers (
	id BIGSERIAL NOT NULL,
	name VARCHAR NULL,
	date_of_birth DATE NULL,
	CONSTRAINT pk_tb_writers PRIMARY KEY (id)
);

COMMENT ON TABLE student12.tb_writers IS 'Таблица с писателями';
COMMENT ON COLUMN student12.tb_writers.id IS 'Идентификатор писателя';
COMMENT ON COLUMN student12.tb_writers.name IS 'Имя писателя';
