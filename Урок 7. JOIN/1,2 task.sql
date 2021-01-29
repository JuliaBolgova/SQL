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



 
