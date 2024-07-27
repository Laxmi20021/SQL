create table hotel(id int not null, s_name varchar(19) unique, 
quantity_kg int, s_type varchar(10), 
place varchar(17)); 

alter table hotel add constraint qua_chk check(quantity_kg>1);

alter table hotel modify column s_type bigint;

alter table hotel add constraint type_chk check(s_type>1);
alter table hotel drop constraint type_chk; 
desc hotel;

insert into hotel values(1,'idli',23,678,'kamalanagar');
insert into hotel values(2,'dosa',64,867,'kengei');
insert into hotel values(3,'vada',765,7655,'KRpuram');
insert into hotel values(4,'puri sagu',43,9675,'vs layoout');
insert into hotel values(5,'tea coffee',45,87987,'girinagar');

select*from hotel ;

alter table hotel  add constraint primary key(place);
alter table hotel  drop constraint s_name; 

select * from hotel;
