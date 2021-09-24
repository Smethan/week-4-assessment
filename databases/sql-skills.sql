insert into artist (name) values ('Lil scruffy'), ('Its me'), ('What is art');
select * from artist order by name asc limit 5;
select first_name, last_name from employee where city = 'Calgary';
select * from employee where reports_to = 2;
select count(*) from employee where city = 'Lethbridge';
select count(*) from invoice where billing_country = 'USA';
select max(total) from invoice;
select min(total) from invoice;
select * from invoice where total > 5;
select count(*) from invoice where total < 5;
select sum(total) from invoice;
select * from invoice i join invoice_line il on i.invoice_id=il.invoice_id where unit_price > 0.99;
select c.first_name, c.last_name, i.invoice_date, i.total from customer c join invoice i on c.customer_id=i.customer_id;
select c.first_name as customer_first_name, c.last_name as customer_last_name, e.first_name as rep_first_name, e.last_name as rep_last_name from employee e join customer c on e.employee_id = c.support_rep_id;
select al.title, a.name from album al join artist a on al.artist_id=a.artist_id;


-- Extra credit
select * from artist order by name asc limit 10;
select * from artist where name like 'Black%';
select * from artist where name like '%Black%';
select min(birth_date) from employee;
select max(birth_date) from employee;
select * from invoice where billing_state in ('CA', 'TX', 'AZ');
select avg(total) from invoice;
select pl.track_id from playlist p join playlist_track pl on p.playlist_id=pl.playlist_id where p.name = 'Music';
select name from track where track_id in (select track_id from playlist_track where playlist_id = 5);
select tr.name, pl.name from ((playlist_track pt join track tr on tr.track_id=pt.track_id) join playlist pl on pl.playlist_id=pt.playlist_id);
select tr.name, al.title from ((track tr join genre g on tr.genre_id=g.genre_id) join album al on al.album_id=tr.album_id) where g.name = 'Alternative & Punk';
