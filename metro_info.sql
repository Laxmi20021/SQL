CREATE TABLE metro_info(id int not null unique,station_name varchar(50),lineno varchar(10),Train_type varchar(50),arrival_time time,departure_time time,platform_no int,is_operational boolean,last_maintanance_date date,capacity int,constraint station_name_uni unique(station_name),constraint capacity_chk check(capacity>4000),constraint platform_no_chk check(platform_no>1));

INSERT INTO metro_info VALUES(1,'vijaynagar station','red line','express','08:00:00','08:05:05',2,true,'2024-05-3',5000);
INSERT INTO metro_info VALUES(21,'hampi station','red line','express','08:00:00','08:05:05',2,true,'2024-05-3',6700);
INSERT INTO metro_info VALUES(2,'jayanagar station','red line','express','08:00:00','08:35:05',2,true,'2024-06-3',7400);
INSERT INTO metro_info VALUES(3,'hosahalli station','green line','local','09:00:00','08:45:05',2,true,'2024-07-3',4500);
INSERT INTO metro_info VALUES(4,'silk institut station','blue line','express','02:00:00','08:05:34',2,true,'2024-08-3',8700);
INSERT INTO metro_info VALUES(5,'chickpete station','yel line','local','03:00:00','08:05:24',2,true,'2024-05-9',7600);
INSERT INTO metro_info VALUES(6,'mahalaksmi station','grren line','express','04:00:00','08:05:23',2,true,'2024-05-31',5600);
INSERT INTO metro_info VALUES(7,'snadel soap station','yel line','local','05:00:00','08:05:00',2,true,'2024-05-2',6300);
INSERT INTO metro_info VALUES(8,'kengeri station','blue line','express','06:00:00','08:05:01',2,true,'2024-05-4',5450);
INSERT INTO metro_info VALUES(9,'malleswaram station','green line','local','07:00:00','08:05:02',2,true,'2024-05-5',5780);
INSERT INTO metro_info VALUES(10,'rajajinagar station','blue line','express','08:05:00','08:05:25',2,true,'2024-05-6',5007);
INSERT INTO metro_info VALUES(11,'magadi raod station','green line','local','08:01:00','08:05:09',2,true,'2024-05-7',5008);
INSERT INTO metro_info VALUES(12,'banashankari station','yel line','express','08:50:00','08:03:05',2,true,'2024-05-8',5080);
INSERT INTO metro_info VALUES(25,'tolgate station','blue line','local','08:00:05','08:55:05',2,true,'2024-05-9',5070);
INSERT INTO metro_info VALUES(26,'sree station','green line','express','08:00:07','08:15:05',2,true,'2024-05-10',5700);
INSERT INTO metro_info VALUES(27,'konankunte station','red line','local','08:00:00','08:05:25',2,true,'2024-05-11',5200);
INSERT INTO metro_info VALUES(28,'market station','blue line','express','08:00:40','08:06:05',2,true,'2024-05-12',5300);
INSERT INTO metro_info VALUES(29,'mejestic station','blue line','local','08:00:60','09:05:05',2,true,'2024-05-13',5400);
INSERT INTO metro_info VALUES(30,'south station','green line','express','08:00:10','07:05:05',2,true,'2024-05-14',9000);
INSERT INTO metro_info VALUES(31,'east station','yel line','local','08:40:50','02:05:05',2,true,'2024-05-15',8000);
INSERT INTO metro_info VALUES(32,'vwest station','blue line','express','08:30:00','01:05:05',2,true,'2024-05-16',7000);
INSERT INTO metro_info VALUES(33,'sumanagar station','green line','local','08:20:00','03:05:05',2,true,'2024-05-17',6000);

ALTER TABLE metro_info add constraint id_chk check(id>0);
ALTER TABLE metro_info modify platform_no int not null;
desc metro_info;
ALTER TABLE metro_info add constraint lineno_uni unique(lineno);