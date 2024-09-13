1) Какие типы связи использовались:
   многие(tb_orders) к одному(tb_clients)
   многие(tb_books) к одному(tb_writers)
   многие(tb_orders) ко многим(tb_books) через таблицу tb_books_list_for_orders
2) Первичный ключ везде id
3) В tb_books внешний ключ writer_id
   В tb_orders внешний ключ client_id
   В tb_books_list_for_orders внешние ключи book_id и order_id 
4) Родительские таблицы tb_books_list_for_orders, tb_books, tb_orders