create table temple_info(id int not null, t_name varchar(20) not null, flowers varchar(15) unique, coconut int unique,
place varchar(20), open_time datetime, close_time datetime, visited timestamp, people bigint, programs int, 
constraint people_chk check(people>200), constraint pgm_chk check(programs>5));  

desc temple_info;
select*from temple_info;

insert into temple_info values(1,'Maruthi temple','tulasi',6,'tolgate','2024-06-23 06:30:00','2024-06-23 07:30:00',
now(),3654,7);
insert into temple_info values(2,'lakshmi temple','lotus',3,'vinayaka layout','2024-01-10 06:00:00',
'2024-01-10 08:00:00',now(),523,16);
insert into temple_info values(3,'ganesh temple','grass',4,'tolgate','2024-06-17 06:30:00','2024-06-17 07:30:00',
now(),256,9);
insert into temple_info values(4,'Anjaneya temple','jasmine',2,'maruthi nagar','2024-07-10 06:45:00','2024-07-10 07:30:00',
now(),5000,10);
insert into temple_info values(5,'Srivasa temple','lily',5,'batwadi','2024-06-28 06:35:00','2024-06-28 07:35:00',
now(),563,15);
insert into temple_info values(6,'Govinda temple','rose',7,'RR nagar','2024-02-23 06:30:00','2024-02-23 07:30:00',
now(),754,7);
insert into temple_info values(7,'Nanjundi temple','Sun flower',35,'Jainagar','2024-06-04 05:30:00','2024-06-04 08:30:00',
now(),874,23);
insert into temple_info values(8,'Durga temple','Mari gold',46,'Vijaynagar','2024-06-16 05:00:00','2024-06-17 08:00:00',
now(),9275,97);
insert into temple_info values(9,'Narasimha temple','parijaatha',766,'Manjunath nagar','2024-11-02 06:30:00','2024-11-02 03:30:00',
now(),2365,67);
insert into temple_info values(10,'venkateshwara temple','Dairy',335,'RT nagar','2023-03-16 05:30:00','2023-03-16 04:30:00',
now(),4367,765);
insert into temple_info values(11,'GramDevi temple','hibiscus',566,'Nagarbhavi','2024-06-18 06:30:00','2024-06-19 04:30:00',
now(),5467,677);
insert into temple_info values(12,'Shani temple','daisy',896,'Laksmipura','2024-06-28 05:15:00','2024-06-28 03:15:00',
now(),9865,754);
insert into temple_info values(13,'saraswathi temple','orchid',876,'tavarekere','2023-06-01 06:54:00','2023-06-01 07:42:00',
now(),8767,7);
insert into temple_info values(14,'varalaksmi temple','calendula',987,'dasarahalli','2024-12-23 07:00:00','2024-12-23 04:30:00',
now(),657,7);
insert into temple_info values(15,'devi temple','snowdrop',887,'KSB colony','2024-06-29 06:30:00','2024-06-26 04:30:00',
now(),789,7);
insert into temple_info values(16,'balaji temple','daffodil',823,'andralli','2024-11-18 05:00:01','2024-11-19 05:30:01',
now(),798,723);
insert into temple_info values(17,'saibaba temple','dahlia',231,'palya','2024-12-07 06:30:00','2024-12-16 04:30:00',
now(),234,76);
insert into temple_info values(18,'parvathi temple','poppy',982,'market','2023-09-05 04:50:00','2023-08-07 08:30:00',
now(),879,82);
insert into temple_info values(19,'siridevi temple','geranium',329,'peenya','2024-10-02 06:00:00','2024-10-02 09:30:00',
now(),2894,987);
insert into temple_info values(20,'kali temple','bulebell',318,'mejestic','2024-04-30 05:30:00','2024-04-18 05:00:36',
now(),2134,87);

select * from temple_info;
alter table temple_info modify column coconut bigint; 
alter table temple_info modify column id int; 
alter table temple_info modify column programs bigint; 
alter table temple_info modify column people bigint; 

alter table temple_info modify column t_name
varchar(20) not null;

alter table temple_info modify column flowers
varchar(30) not null;

alter table temple_info
modify column t_name varchar(20) not null,
add constraint unique_







