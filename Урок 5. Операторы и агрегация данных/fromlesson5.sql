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
  
insert INTO `catalogs` (`name`) VALUES ('Ïğîöåññîğû');
insert INTO `catalogs` (`name`) VALUES ('Ìàò. ïëàòû');
insert INTO `catalogs` (`name`) VALUES ('Âèäåîêàğòû');
insert INTO `catalogs` (`name`) VALUES ('Æåñòêèå äèñêè');
insert INTO `catalogs` (`name`) VALUES ('Îïåğàòèâíàÿ ïàìÿòü');

desc catalogs;

select * from catalogs;

update catalogs set id = id - 10;

create table tbl (x int, y int, summ int as (x +y));
insert into tbl (x,y) values (1,3), (4,6);
select * from tbl;

# save in base STORED
create table tbl (x int, y int, summ int as (x +y) stored );

# âûâåñòè òîëüêî îïğåäåëåííûå ñòğîêè  
select * from catalogs where id >= 2;
select * from catalogs where id >= 2 and id < 4;
select * from catalogs where id between 2 and 4;
select * from catalogs where id not between 2 and 4;
select * from catalogs where id in (1,2,5);
select * from catalogs where id not in (1,2,5);
select * from catalogs limit 4;

select * from catalogs where name = ('ïğîöåññîğû');
select * from catalogs where name like ('ïğîöåññîğû');

#íàéòè îïğåäåëåííûå ñòğîêè
select 'adcxvnbdsf' like 'adc%f';
select 'adcxvnbdsf' like '%f';
select * from catalogs where name like ('%û');

#ñîñòîÿùèå èç êîëè÷åñòâà ñèìâîëîâ
select * from catalogs where name like ('__________');

#åñëè íóæíî íàéòè  _ è % êàê ñèìâîëû ıêğàíèğóåì
select '15 %' like '15 \%';

#÷òî íå ñîäåğæèò û
select * from catalogs where name not like ('%û');

#åñëè íóæíî íàéòè â íà÷àëå òåêñòà ^
select * from catalogs where name rlike ('^æ');
#åñëè íóæíî íàéòè â êîíöå òåêñòà $
select * from catalogs where name rlike ('û$');
# â ëşáîì ìåñòå 
select * from catalogs where name rlike ('ö');
# öåëóş ñòğîêó 
select * from catalogs where name rlike ('^ïğîöåññîğû$');
# íàéòè èëè òî èëè ıòî 
select * from catalogs where name rlike ('ïğî|òû$');
#íàéòè ñòğîêè ñîäåğæàùèå ÷òîòî â äèàïàçîíå 
select * from catalogs where name rlike ('[î-ï]');
#íàéòè ñòğîêè ñîäåğæàùèå ÷òîòî â äèàïàçîíå digit - only numbers
select * from catalogs where name rlike ('[[:digit:]]');

# ÑÎĞÒÈĞÎÂÊÀ
# ñîğòèğîâêà 1
select * from catalogs order by name;
# ñîğòèğîâêà 2 îáğàòíàÿ
select * from catalogs order by name decs;


use vk;
select * from users;

# âû÷èñëèòü òåêóùèé âîçğàñò ïîëüçîâàòåëÿ
select first_name name, (to_days(now()) - to_days(created_at))/365.25 as age from users;
# èëè
select first_name , timestampdiff(year, created_at, now()) as age from users;

# âûâåñòè ëşáóş ñòğîêó ğàíäîìíî
select * from users order by rand() limit 2;

select version(); 

select user();

use vk;

# âûâåñòè òîëüêî ïåğâûõ 5 ñèìâîëîâ ñ ñòîëáöå
select substring(email, 1, 5) as name from users;

# ñîáüğàòü íåñêîëüêî äàííûõ â îëèí ñòîëáåö CONCAT
select id, concat(first_name, ' ', timestampdiff(year, created_at, now())) as name from users;
