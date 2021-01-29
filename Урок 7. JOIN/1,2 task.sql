drop database if exists example;
create database example;
use example;

-- 2
DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
	catalog_id int auto_increment primary key,	
	name VARCHAR(20) NOT null
	);
insert into catalogs (name) values
 ('Инструменты'),
 ('Мелкие материалы');

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
	order_id int auto_increment primary key,	
	product VARCHAR(20) NOT null,
	catalog_id int,
	CONSTRAINT catalog_id_fk
	foreign key (catalog_id) references catalogs(catalog_id)
   	on delete cascade 
   	on update cascade
	);

insert into orders (product, catalog_id) values
 ('Дрель', 1),
 ('Перфоратор', 1),
 ('Гвозди', 2),
 ('Пленка', 2),
 ('Шурупы', 2),
 ('Клей', NULL);

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	user_id int unsigned auto_increment primary key,	
	name VARCHAR(20) NOT null,
	order_id int,
	CONSTRAINT order_id_fk 
	foreign key (order_id) references orders(order_id)
   	on delete cascade 
   	on update cascade
	);

insert into users (name, order_id) values
('Петя', 1), 
('Вася', 2), 
('Вася', 3), 
('Коля', 4),
('Коля', 5),
('Коля', 6);

select * from orders;
select *from catalogs;
select u.user_id, u.name, o.product
from users u join orders o using (order_id);

select o.order_id , o.product, c.name as catalog
from orders o left join catalogs c  on
 o.catalog_id  = c.catalog_id;

 
