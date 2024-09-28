
CREATE TABLE student12.tb_orders (
	id BIGSERIAL NOT NULL,
	client_id BIGSERIAL NOT NULL,
	create_at TIMESTAMP NULL,
	payment_type VARCHAR NULL,
	total_cost NUMERIC(12, 2) NULL,
	CONSTRAINT pk_tb_orders PRIMARY KEY (id)
);


COMMENT ON TABLE student12.tb_orders IS 'Таблица с заказами';
COMMENT ON COLUMN student12.tb_orders.id IS 'Идентификатор заказа';
COMMENT ON COLUMN student12.tb_orders.client_id IS 'Идентификатор клиента';
COMMENT ON COLUMN student12.tb_orders.create_at IS 'Дата создания';
COMMENT ON COLUMN student12.tb_orders.payment_type IS 'Тип оплаты';
COMMENT ON COLUMN student12.tb_orders.total_cost IS 'Общая стоимость';


ALTER TABLE student12.tb_orders ADD CONSTRAINT fk_tb_orders_client_id FOREIGN KEY (client_id) REFERENCES student12.tb_clients(id);