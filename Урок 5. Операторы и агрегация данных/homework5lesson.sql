drop database if exists 5lesson;
create database 5lesson;
use 5lesson;
show tables;

#задание 1

drop table if exists tbl;
create table tbl (
 id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  name VARCHAR(100) NOT NULL COMMENT "Имя пользователя",
  bithday_at DATETIME COMMENT "Дата дня рождения",
  created_at DATETIME COMMENT "Время создания строки",  
  updated_at DATETIME COMMENT "Время обновления строки"
);

insert into tbl (name, bithday_at, created_at, updated_at) values 
('Jean', '1992-02-05', null, null),
('Ostin', '1989-09-14', null, null)
;

select * from tbl;

# добавялем значения в created_at и updated_at

update tbl set created_at = now(), updated_at = now(); 
select * from tbl;



# задание 3
drop table if exists storehouses_products;
create table storehouses_products (
	id serial primary key,
	value int unsigned,
	created_at DATETIME COMMENT "Время создания строки",  
  	updated_at DATETIME  COMMENT "Время обновления строки"
  	);

  insert into storehouses_products (value, created_at, updated_at) values
  (3, now(),now() ),
  (5,now(),now()),
  (2,now(),now()),
  (0,now(),now()),
  (7,now(),now()),
  (0,now(),now()),
  (75,now(),now()),
  (68,now(),now()),
  (23,now(),now()),
  (423,now(),now()),
  (124054,now(),now()),
  (965,now(),now());
 
select * from storehouses_products;

select * from storehouses_products order by value=0, value;

# задание 5.  
show tables;
drop table if exists catalogs;
CREATE TABLE catalogs (
    id SERIAL,
    name VARCHAR(255) NOT NULL UNIQUE
    );

show tables;
  
insert INTO `catalogs` (`name`) VALUES ('Процессоры');
insert INTO `catalogs` (`name`) VALUES ('Мат. платы');
insert INTO `catalogs` (`name`) VALUES ('Видеокарты');
insert INTO `catalogs` (`name`) VALUES ('Жесткие диски');
insert INTO `catalogs` (`name`) VALUES ('Оперативная память');

desc catalogs;

select * from catalogs where id in (5,1,2);

select * from catalogs where id in (5,1,2)
order by field (id, 5,1,2);

# Агрегация
select avg(timestampdiff(year, bithday_at, now())) as AGE from tbl;


Задание 3
drop table if exists multiply;
CREATE TABLE multiply (
    id SERIAL,
    number_calculate int NOT NULL UNIQUE
    );
insert INTO multiply (number_calculate) VALUES 
(1),
(2),
(3),
(4),
(5);

select * from multiply;

select exp(sum(ln(number_calculate))) as Multi from multiply;



