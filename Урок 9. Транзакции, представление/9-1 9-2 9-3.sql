drop database if exists example;
create database example;
use example;

-- Я немного смешала 1 и 2 задание

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
 ('Клей', NULL); -- специально null чтобы посмотреть как работает left join
 

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

-- Доп задание
DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
	flights_id int auto_increment primary key,	
	city_from VARCHAR(50) NOT null,
	city_to VARCHAR(50) NOT null
	);

insert into flights (city_from, city_to) values
 ('Moscow', 'Omsk'),
 ('Novgorod', 'Kazan'),
 ('Irkutsk', 'Moscow'),
 ('Omsk', 'Moscow'),
 ('Moscow', 'Kazan');

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
	catalog_id int auto_increment primary key,	
	city_code VARCHAR(50) NOT null,
	city_name VARCHAR(50) NOT null
	);

insert into cities (city_code, city_name) values
 ('Moscow', 'Москва'),
 ('Irkutsk', 'Иркутск'),
 ('Novgorod', 'Новгород'),
 ('Kazan', 'Казань'),
 ('omsk', 'Омск');

select flights.flights_id,
flights.city_from as city_fromEN, 
flights.city_to as city_toEN,
city_fromRUS.city_name as 'from',
city_toRUS.city_name as 'to'
from flights
join cities as city_fromRUS on flights.from = cities.city_code
join cities as city_toRUS on flights.to = cities.city_code;


-- 9 урок


-- 2 Создайте представление, которое выводит название name товарной
-- позиции из таблицы products и со

 CREATE OR REPLACE VIEW view_products AS
select o.order_id , o.product, c.name as catalog
from orders o left join catalogs c  on
 o.catalog_id  = c.catalog_id;

select * from view_products;

-- 1.В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных.
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users.
-- Используйте транзакции.

drop database if exists shop;
create database shop;
use shop;

-- DROP TABLE IF EXISTS users;
CREATE TABLE users (
	user_id int unsigned auto_increment primary key,	
	name VARCHAR(20) NOT null);

insert into users (name) values ('Петя'), 
('Вася'), 
('Коля');

drop database if exists sample;
create database sample;
use sample;

-- DROP TABLE IF EXISTS users;
CREATE TABLE users (
	user_id int unsigned auto_increment primary key,	
	name VARCHAR(20) NOT null);

-- insert into users (name) values ('Петя'), 
-- ('Вася'), 
-- ('Коля');

SELECT * FROM shop.users;
SELECT * FROM sample.users;

START TRANSACTION;
  INSERT INTO sample.users SELECT * FROM shop.users WHERE user_id = 1;
  DELETE FROM shop.users WHERE user_id = 1;
COMMIT;
 
SELECT * FROM shop.users;
SELECT * FROM sample.users;

-- пусть имеется таблица с календарным полем created_at.
-- в ней размещены разреженые календарные записи за август 2018 года '2018-08-01', '2018-08-04', 
-- '2018-08-16' и 2018-08-17. составьте запрос, который выводит полный список дат за август, 
-- выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, если она отсутствует.

create table if not exists table1 (
  id serial primary key,
  name varchar(30),
  created_at date not null
);

insert into table1 values
(null, 'sdgadfg', '2018-08-01'),
(null, 'dfgdsfgsdf', '2018-08-04'),
(null, 'fdghbsfgb sfdhgh', '2018-08-16'),
(null, 'eawg, jhs di', '2018-08-17');

create temporary table days (
  day int
);

insert into days values (0), (1), (2), (3), (4), (5), (6), (7), (8), (9), (10),
(11), (12), (13), (14), (15), (16), (17), (18), (19), (20),
(21), (22), (23), (24), (25), (26), (27), (28), (29), (30);

select
  date(date('2018-08-31') - interval days.day day) as day,
  not isnull(table1.name) as order_exist
from
  days 
left join
  table1 
on
  date(date('2018-08-31') - interval days.day day) = table1.created_at
order by
  day;
  
