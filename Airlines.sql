create table Airlines1(id int ,company_name varchar(30),
airport_name varchar(30),source_name varchar(20),
destination_name varchar(30),primary key
(id,company_name,airport_name,source_name,
destination_name));

select * from Airlines1;

insert into Airlines1 values(1,'ethihad','KIA','Bengaluru','Bangkok');
insert into Airlines1 values(2,'kingfisher','rajivgandhi','hyderabad',
'switzerland');
insert into Airlines1 values(3,'ABC','Hubli','mumbai','maldives');
insert into Airlines1 values(4,'XYZ','Gagad','Dubai','Bali');
insert into Airlines1 values(5,'EGF','Bagalakot','delhi','bengaluru');
insert into Airlines1 values(6,'ABE','Dharwad','mumbai','Mumbai');
insert into Airlines1 values(7,'Devanahalli','sambra','Bali','maldives');
insert into Airlines1 values(8,'Kempegouda','england','america','newyork');
insert into Airlines1 values(9,'delhi','bangaladesh','delhi','bijapur');
insert into Airlines1 values(10,'national','Agara','delhi','hubli');

select * from Airlines1;

select * from Airlines1 where id between 2 and 5;
select * from Airlines1 where id not between 3 and 5;

select * from Airlines1 where company_name like 'k%';

select * from Airlines1 order by id;

select * from Airlines1 order by id desc;

select lower(company_name) from Airlines1;
select upper(company_name) from Airlines1;
select concat(id,company_name,destination_name) from Airlines1;
select length(source_name) from Airlines1;
select length(company_name)from Airlines1;

create index company_name_index on Airlines1(company_name);
select * from Airlines1 where company_name ='XYZ';


explain select * from  Airlines1 where company_name='ABC';

explain select * from  Airlines1 where company_name='EGF';


