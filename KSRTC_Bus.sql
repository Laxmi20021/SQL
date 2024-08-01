create table KSRTC_Bus(id int not null,d_name varchar(20) unique, age int,
tickect_price int primary key,destination varchar(30));

select * from KSRTC_Bus;

alter table KSRTC_bus add constraint age_chk check (age>40);

insert into KSRTC_Bus values(21,'Kiran',42,1500,'Bengaluru');
insert into KSRTC_Bus values(22,'Rohit',48,1600,'Hubli');
insert into KSRTC_Bus values(23,'Suhas',45,1700,'Hasana');
insert into KSRTC_Bus values(24,'Rahul',41,1800,'Tumakuru');
insert into KSRTC_Bus values(25,'Sudeep',56,1900,'Mysoure');
insert into KSRTC_Bus values(26,'Karthik',52,200,'Chikmagaluru');
insert into KSRTC_Bus values(27,'Sathvik',54,2500,'Haveri');
insert into KSRTC_Bus values(28,'Prem',53,2400,'Harihara');
insert into KSRTC_Bus values(29,'Darshan',50,2300,'Gadag');
insert into KSRTC_Bus values(30,'Ganesh',61,2200,'Bijapur');

select * from KSRTC_Bus;

select * from KSRTC_Bus where id between 31 and 35;
select * from KSRTC_Bus where id not between 3 and 5;

select * from KSRTC_Bus where d_name like 'k%';

select * from KSRTC_Bus order by id;

select * from KSRTC_Bus order by id desc;

select lower(d_name) from KSRTC_Bus;
select upper(d_name) from KSRTC_Bus;
select concat(id,d_name,destination) from KSRTC_Bus;
select length(destination) from KSRTC_Bus;
select length(d_name)from KSRTC_Bus;

create index d_name_index on KSRTC_Bus(d_name);
select * from KSRTC_Bus where d_name ='Darshan';


explain select * from  KSRTC_Bus where destination='Gadag';
explain select * from  KSRTC_Bus where age=56;
explain select * from  KSRTC_Bus where destination='Harihara';






