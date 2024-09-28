
CREATE TABLE student12.tb_clients (
	id BIGSERIAL NOT NULL,
	name VARCHAR NULL,
	date_of_birth DATE NULL,
	CONSTRAINT pk_tb_clients PRIMARY KEY (id)
);

COMMENT ON TABLE student12.tb_clients IS 'Таблица с клиентами';
COMMENT ON COLUMN student12.tb_clients.id IS 'Идентификатор клиента';
COMMENT ON COLUMN student12.tb_clients.name IS 'Имя клиента';
COMMENT ON COLUMN student12.tb_clients.date_of_birth IS 'Дата рождения клиента';