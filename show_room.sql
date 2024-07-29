create table show_room(id int not null, vehicle_no int not null, veh_names varchar(15) unique, owners varchar(15) unique,
buyers varchar(20), company varchar(19), price double, vistors bigint, bookings int, sold boolean, 
constraint vistors_chk check(vistors>20), constraint bookings_chk check(bookings>5));

select*from show_room;
desc show_room;


insert into show_room values(1,4324,'i10','Deekshith','Sujatha','hundai',900000.5,4563,23,1);
insert into show_room values(2,2324,'i20','gaanavi','kamalesh','hundai',850000.5,343,65,0);
insert into show_room values(3,4655,'kia','darshan','ashok','toyota',750000.5,3424,23,0);
insert into show_room values(4,1123,'innova','puneeeth','akash','toyota',165000.5,8766,97,1);
insert into show_room values(5,7767,'bmw','rajkumar','ram','maruthi',650000.5,3454,565,1);
insert into show_room values(6,5676,'suzuki','raghav','sridevi','hundai',295000.5,45433,76,0);
insert into show_room values(7,4456,'mahindra','sunitha','asha','Mahindra',900000.5,2323,546,0);
insert into show_room values(8,5464,'audi','seetha','akhil','porsche',900000.5,4243,56,0);
insert into show_room values(9,4565,'honda','bhargavi','anushree','Honda',900000.5,3534,45,1);
insert into show_room values(10,4554,'mg','sadhana','dhanyashree','MG',900000.5,5432,435,1);
insert into show_room values(11,3545,'skoda','sathya','yadhav','Skoda',900000.5,35354,56,0);
insert into show_room values(12,7656,'jeep','vivek','dhanush','Mahindra',900000.5,5645,35,0);
insert into show_room values(13,7766,'tata','parvathi','priya','Maruthi',900000.5,42343,454,1);
insert into show_room values(14,6565,'bentley','vishal','thanu','toyota',900000.5,23435,67,0);
insert into show_room values(15,5656,'ford','shravani','rakesh','Ford',900000.5,2434,97,1);
insert into show_room values(16,4545,'tesla','shakthi','manoj','Telsa',900000.5,9877,76,0);
insert into show_room values(17,8876,'hyndai','sharmila','lavanya','Hundai',900000.5,8767,867,1);
insert into show_room values(18,5434,'swift','thejas','nishmitha','Maruthi',900000.5,9787,98,0);
insert into show_room values(19,8564,'benz','maxy','niraj','Maruthi',900000.5,45665,987,0);
insert into show_room values(20,8565,'thar','jeevitha','kavitha','Mahindra',900000.5,98776,273,1);


alter table show_room modify column vehicle_no bigint; 
alter table show_room modify column id bigint; 
alter table show_room modify column vistors int; 

ALTER TABLE show_room modify vistors int not null;