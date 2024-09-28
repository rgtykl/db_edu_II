select ctid from  student12.tb_books
select ctid from  student12.tb_writers

select * from  student12.tb_books_0_1000
select * from  student12.tb_books_1000_10000
select * from  student12.tb_books_10000


select SUM(count_of_download) from student12.tb_books where genre = 'Исторический роман'

select genre, SUM(count_of_download) from student12.tb_books
group by genre


select w."name", AVG(count_of_download) from student12.tb_books b
join student12.tb_writers  w on w.id = b.writer_id
group by w."name"


select w."name", SUM(count_of_download) from student12.tb_books b
join student12.tb_writers  w on w.id = b.writer_id
group by w."name"

select w."name", count(*) from student12.tb_books b
join student12.tb_writers  w on w.id = b.writer_id
group by w."name"

