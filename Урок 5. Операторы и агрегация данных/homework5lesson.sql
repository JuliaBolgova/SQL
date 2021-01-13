drop database if exists 5lesson;
create database 5lesson;
use 5lesson;
show tables;

#������� 1

drop table if exists tbl;
create table tbl (
 id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� ������", 
  name VARCHAR(100) NOT NULL COMMENT "��� ������������",
  bithday_at DATETIME COMMENT "���� ��� ��������",
  created_at DATETIME COMMENT "����� �������� ������",  
  updated_at DATETIME COMMENT "����� ���������� ������"
);

insert into tbl (name, bithday_at, created_at, updated_at) values 
('Jean', '1992-02-05', null, null),
('Ostin', '1989-09-14', null, null)
;

select * from tbl;

# ��������� �������� � created_at � updated_at

update tbl set created_at = now(), updated_at = now(); 
select * from tbl;



# ������� 3
drop table if exists storehouses_products;
create table storehouses_products (
	id serial primary key,
	value int unsigned,
	created_at DATETIME COMMENT "����� �������� ������",  
  	updated_at DATETIME  COMMENT "����� ���������� ������"
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


