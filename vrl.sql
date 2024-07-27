create table vrl(id int,b_source varchar(20),b_destination varchar(20),
b_drivername varchar(20) unique,
b_driverage int,bus_no int primary key);

alter table vrl add constraint age_chk check(b_driverage>22);

alter table vrl drop constraint age_chk;

select * from vrl;

desc vrl;

insert into vrl values (1,'rajajinagar','sujatha circle','ganesh',26,2252);
insert into vrl values (2,'krpuram','channamma circle','yash',25,253);
insert into vrl values (3,'mgroad','yeshwanthpur','darshan',24,254);
insert into vrl values (4,'banashankari','konanakunte','sudeep',28,255);
insert into vrl values (3,'jayanagar','shivanagar','pavan',30,256);

alter table vrl add column b_no_of_conductor int not null;
select * from vrl;
alter table vrl drop primary key;

alter table vrl drop b_no_of_conductor;


