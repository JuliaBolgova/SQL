select 5 + 8;

# rename 
select 5 + 8 as summ;

create database my;

use my;

show databases;

CREATE TABLE catalogs (
    id SERIAL,
    name VARCHAR(255) NOT NULL UNIQUE
    );

show tables;
  
insert INTO `catalogs` (`name`) VALUES ('����������');
insert INTO `catalogs` (`name`) VALUES ('���. �����');
insert INTO `catalogs` (`name`) VALUES ('����������');
insert INTO `catalogs` (`name`) VALUES ('������� �����');
insert INTO `catalogs` (`name`) VALUES ('����������� ������');

desc catalogs;

select * from catalogs;

update catalogs set id = id - 10;

create table tbl (x int, y int, summ int as (x +y));
insert into tbl (x,y) values (1,3), (4,6);
select * from tbl;

# save in base STORED
create table tbl (x int, y int, summ int as (x +y) stored );

# ������� ������ ������������ ������  
select * from catalogs where id >= 2;
select * from catalogs where id >= 2 and id < 4;
select * from catalogs where id between 2 and 4;
select * from catalogs where id not between 2 and 4;
select * from catalogs where id in (1,2,5);
select * from catalogs where id not in (1,2,5);
select * from catalogs limit 4;

select * from catalogs where name = ('����������');
select * from catalogs where name like ('����������');

#����� ������������ ������
select 'adcxvnbdsf' like 'adc%f';
select 'adcxvnbdsf' like '%f';
select * from catalogs where name like ('%�');

#��������� �� ���������� ��������
select * from catalogs where name like ('__________');

#���� ����� �����  _ � % ��� ������� ����������
select '15 %' like '15 \%';

#��� �� �������� �
select * from catalogs where name not like ('%�');

#���� ����� ����� � ������ ������ ^
select * from catalogs where name rlike ('^�');
#���� ����� ����� � ����� ������ $
select * from catalogs where name rlike ('�$');
# � ����� ����� 
select * from catalogs where name rlike ('�');
# ����� ������ 
select * from catalogs where name rlike ('^����������$');
# ����� ��� �� ��� ��� 
select * from catalogs where name rlike ('���|��$');
#����� ������ ���������� ����� � ��������� 
select * from catalogs where name rlike ('[�-�]');
#����� ������ ���������� ����� � ��������� digit - only numbers
select * from catalogs where name rlike ('[[:digit:]]');

# ����������
# ���������� 1
select * from catalogs order by name;
# ���������� 2 ��������
select * from catalogs order by name decs;


use vk;
select * from users;

# ��������� ������� ������� ������������
select first_name name, (to_days(now()) - to_days(created_at))/365.25 as age from users;
# ���
select first_name , timestampdiff(year, created_at, now()) as age from users;

# ������� ����� ������ ��������
select * from users order by rand() limit 2;

select version(); 

select user();

use vk;

# ������� ������ ������ 5 �������� � �������
select substring(email, 1, 5) as name from users;

# �������� ��������� ������ � ���� ������� CONCAT
select id, concat(first_name, ' ', timestampdiff(year, created_at, now())) as name from users;
