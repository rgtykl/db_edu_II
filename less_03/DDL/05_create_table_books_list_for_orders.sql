
CREATE TABLE student12.tb_books_list_for_orders (
	id BIGSERIAL NOT NULL,
	book_id BIGSERIAL NOT NULL,
	order_id BIGSERIAL NOT NULL,
	CONSTRAINT pk_books_list_for_orders PRIMARY KEY (id)
);
COMMENT ON TABLE student12.tb_books_list_for_orders IS 'Таблица со списком книг в заказе';
COMMENT ON COLUMN student12.tb_books_list_for_orders.id IS 'Идентификатор списка книг';
COMMENT ON COLUMN student12.tb_books_list_for_orders.book_id IS 'Идентификатор книги';
COMMENT ON COLUMN student12.tb_books_list_for_orders.order_id IS 'Идентификатор заказа';

ALTER TABLE student12.tb_books_list_for_orders ADD CONSTRAINT fk_tb_books_list_for_orders_order_id FOREIGN KEY (order_id) REFERENCES student12.tb_orders(id);