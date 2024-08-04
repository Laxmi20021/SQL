CREATE DATABASE RTO;
USE RTO;
CREATE TABLE rto_LLR_INFO(id int,p_name varchar(40),address varchar(40),phone_number bigint,LLR_id int,date_of_birth date,account_bal bigint,membership_status varchar(50),created_at timestamp,created_by varchar(50));
 ALTER TABLE LLR_INFO add constraint primary key(LLR_id);
 desc LLR_INFO;
INSERT INTO LLR_INFO VALUES(1,'priya','kkp',7760750873,200,'1990-02-01',1001,'active',now(),'manager');
INSERT INTO LLR_INFO VALUES(2,'varsh','vijaynagar',8860750873,201,'1990-03-01',1002,'active',now(),'seetha');
INSERT INTO LLR_INFO VALUES(3,'sush','magadi',7760760873,202,'1990-01-02',1003,'active',now(),'madan');
INSERT INTO LLR_INFO VALUES(4,'nayana','hampinagar',7750750873,203,'1990-04-01',1004,'active',now(),'keerthi');
INSERT INTO LLR_INFO VALUES(5,'preethi','jaya nagar',7760750883,204,'1990-05-01',1005,'active',now(),'shruthi');
INSERT INTO LLR_INFO VALUES(6,'mohan','banashankari',7760750893,205,'1991-01-01',1006,'active',now(),'sourabha');
INSERT INTO LLR_INFO VALUES(7,'kiran','giri nagar',7760750867,206,'1992-01-01',1007,'active',now(),'yash');
INSERT INTO LLR_INFO VALUES(8,'dee','deepa nagar',7760750563,207,'1993-01-01',1008,'active',now(),'kishan');
INSERT INTO LLR_INFO VALUES(9,'jai','mysore',7760750983,208,'1994-01-01',1009,'active',now(),'vilan');
INSERT INTO LLR_INFO VALUES(10,'sachin','gadag',5660750873,209,'1995-01-01',1010,'active',now(),'shiva');
INSERT INTO LLR_INFO VALUES(11,'vijith','hampi',7450750873,210,'1996-01-01',1011,'active',now(),'suma');
INSERT INTO LLR_INFO VALUES(12,'prathap','rr nagar',3460750873,211,'1997-01-01',1012,'active',now(),'sahana');
INSERT INTO LLR_INFO VALUES(13,'pradeep','btm layout',7774750873,212,'1998-01-01',1013,'active',now(),'viswa');
INSERT INTO LLR_INFO VALUES(14,'praneetha','khari nagar',7723750873,213,'1999-01-01',1014,'active',now(),'subha');
INSERT INTO LLR_INFO VALUES(15,'raksh','challagatta',1260750873,214,'1990-01-23',1015,'active',now(),'param');
INSERT INTO LLR_INFO VALUES(16,'shivu','shreenagar',6760750873,215,'1990-01-18',1016,'active',now(),'prakash');
INSERT INTO LLR_INFO VALUES(17,'nayak','hoskote',9260754573,216,'1990-01-18',1017,'active',now(),'prakash');
INSERT INTO LLR_INFO VALUES(18,'param','shivnagar',9245750873,217,'1990-01-18',1018,'active',now(),'prakash');
INSERT INTO LLR_INFO VALUES(19,'prem','bagalkote',9264550873,218,'1990-01-18',1019,'active',now(),'prakash');
INSERT INTO LLR_INFO VALUES(20,'ganu','palya',9223750873,219,'1990-01-18',1020,'active',now(),'prakash');

insert into LLR_INFO(LLR_id,p_name) values(1001,'priya')on duplicate key update p_name='prakruthi';

replace into LLR_INFO(LLR_id,P_name,address) value(2001,'sanjana','raichur');


USE RTO;
CREATE TABLE LLR_TEST_INFO(id int,p_name varchar(20),age int,test_id int primary key,address varchar(40),phn_no bigint,join_date date,LLR_id int,p_status varchar(20),department varchar(50),foreign key(LLR_id)references LLR_INFO(LLR_id));
desc LLR_TEST_INFO;

INSERT INTO LLR_TEST_INFO VALUES(1,'priya',21,300,'kkp',6560750873,'2023-01-01',201,'active','engg');
INSERT INTO LLR_TEST_INFO VALUES(2,'naveen',22,301,'kr pete',8760750873,'2023-01-24',202,'active','police');
INSERT INTO LLR_TEST_INFO VALUES(3,'mohan',23,302,'malleswaram',7760950873,'2023-01-23',203,'active','degree');
INSERT INTO LLR_TEST_INFO VALUES(4,'deeraj',24,303,'bashya',7760753873,'2023-9-01',204,'active','bcom');
INSERT INTO LLR_TEST_INFO VALUES(5,'patel',25,304,'jaya nagar',7760780873,'2023-03-01',205,'active','mba');
INSERT INTO LLR_TEST_INFO VALUES(6,'dee',26,305,'bnglr',7764750873,'2023-02-01',206,'active','nursing');
INSERT INTO LLR_TEST_INFO VALUES(7,'sahan',27,306,'hampi nagar',7710750073,'2023-04-01',207,'active','mbbs');
INSERT INTO LLR_TEST_INFO VALUES(8,'shantha',28,307,'magadi',7760750273,'2023-05-01',208,'active','dform');
INSERT INTO LLR_TEST_INFO VALUES(9,'shree',29,308,'rr nagar',7534750873,'2023-01-03',209,'active','sales');
INSERT INTO LLR_TEST_INFO VALUES(10,'lavanya',19,309,'nandi',7350450871,'2023-01-04',210,'active','marketing');
INSERT INTO LLR_TEST_INFO VALUES(11,'deksh',18,310,'shiradi',7350450872,'2024-10-04',211,'active','marketing');
INSERT INTO LLR_TEST_INFO VALUES(12,'punya',17,311,'hampi',7350450834,'2024-09-04',212,'active','marketing');
INSERT INTO LLR_TEST_INFO VALUES(13,'nandi',31,312,'gadag',7350450878,'2024-01-02',213,'active','marketing');
INSERT INTO LLR_TEST_INFO VALUES(14,'pavan',32,313,'beedar',7350450887,'2024-01-01',214,'active','marketing');
INSERT INTO LLR_TEST_INFO VALUES(15,'dev',33,314,'ramanagar',7350450898,'2024-01-09',215,'active','marketing');
INSERT INTO LLR_TEST_INFO VALUES(16,'om',34,315,'goa',7350450353,'2024-01-03',216,'active','marketing');
INSERT INTO LLR_TEST_INFO VALUES(17,'suhas',35,316,'kerala',7350450763,'2024-05-04',217,'active','marketing');
INSERT INTO LLR_TEST_INFO VALUES(18,'amith',36,317,'tamilnaidu',7350450233,'2024-04-04',218,'active','marketing');
INSERT INTO LLR_TEST_INFO VALUES(19,'haji',37,318,'waynadu',7350450563,'2024-03-04',219,'active','marketing');
INSERT INTO LLR_TEST_INFO VALUES(20,'priyanka',38,319,'sathnur',7350452373,'2024-01-04',200,'active','marketing');

insert into LLR_TEST_INFO(LLR_id,test_id,p_name)values(1001,300,'priya')on duplicate key update p_name='bharath';
replace into LLR_TEST_INFO(LLR_id,test_id,p_name)values(2001,900,'sanjana');

USE RTO;
CREATE TABLE DRIVING_LICENCE_INFO(id int,DL_id int primary key,fullName varchar(50),DL_test_id int,issue_date date,expiry_date date,address varchar(30),state varchar(100),DL_LLR_id int,country varchar(50),foreign key(DL_LLR_id)references LLR_INFO(LLR_id),foreign key(DL_test_id)references LLR_TEST_INFO(test_id));
desc DRIVING_LICENCE_INFO;

INSERT INTO DRIVING_LICENCE_INFO VALUES(1,'2345','salman',300,'2020-01-10','2025-01-09','banglore','karnataka',200,'india');
INSERT INTO DRIVING_LICENCE_INFO VALUES(2,'2145','navya',301,'2021-01-10','2025-02-09','sathnur','karnataka',201,'india');
INSERT INTO DRIVING_LICENCE_INFO VALUES(3,'2245','shetty',302,'2022-01-10','2025-03-09','kankapura','karnataka',202,'india');
INSERT INTO DRIVING_LICENCE_INFO VALUES(4,'22235','hasan',303,'2020-02-10','2025-04-09','goa','karnataka',203,'india');
INSERT INTO DRIVING_LICENCE_INFO VALUES(5,'2545','kamal',304,'2020-03-10','2025-05-09','tiptur','karnataka',204,'india');
INSERT INTO DRIVING_LICENCE_INFO VALUES(6,'2645','madan',305,'2020-04-10','2025-06-09','mandir','karnataka',205,'india');
INSERT INTO DRIVING_LICENCE_INFO VALUES(7,'2745','sai',306,'2020-05-20','2025-07-09','laksmipur','karnataka',206,'india');
INSERT INTO DRIVING_LICENCE_INFO VALUES(8,'2845','thilak',307,'2020-06-10','2025-08-09','raychur','karnataka',207,'india');
INSERT INTO DRIVING_LICENCE_INFO VALUES(19,'2945','sush',308,'2020-07-10','2025-09-09','rr nagar','karnataka',208,'india');
INSERT INTO DRIVING_LICENCE_INFO VALUES(10,'3645','sheela',309,'2020-08-10','2025-10-09','hoshalli','karnataka',209,'india');
INSERT INTO DRIVING_LICENCE_INFO VALUES(11,'3346','pratham',310,'2020-09-10','2025-01-11','magadi','karnataka',210,'india');
INSERT INTO DRIVING_LICENCE_INFO VALUES(12,'3349','laksmi',311,'2021-07-10','2025-01-12','dasarahalli','karnataka',211,'india');
INSERT INTO DRIVING_LICENCE_INFO VALUES(13,'3345','pakruth',312,'2021-06-10','2025-01-13','giri nagar','karnataka',212,'india');
INSERT INTO DRIVING_LICENCE_INFO VALUES(14,'3355','sahan',313,'2021-05-10','2025-01-14','shin nagar','karnataka',213,'india');
INSERT INTO DRIVING_LICENCE_INFO VALUES(15,'3385','keerthi',314,'2021-04-10','2025-01-15','attiguppe','karnataka',214,'india');
INSERT INTO DRIVING_LICENCE_INFO VALUES(16,'6545','naidu',315,'2021-03-10','2025-01-16','jaynagar','karnataka',215,'india');
INSERT INTO DRIVING_LICENCE_INFO VALUES(17,'4345','deeraj',316,'2021-02-10','2025-01-17','bidar','karnataka',216,'india');
INSERT INTO DRIVING_LICENCE_INFO VALUES(18,'4145','deekshith',317,'2021-01-10','2025-01-18','gadag','karnataka',217,'india');
INSERT INTO DRIVING_LICENCE_INFO VALUES(19,'3445','nayak',318,'2020-01-30','2025-01-09','hampi','karnataka',218,'india');
INSERT INTO DRIVING_LICENCE_INFO VALUES(20,'8745','smrithi',319,'2022-01-10','2025-01-29','vijay nagar','karnataka',219,'india');

insert into DRIVING_LICENCE_INFO(DL_id,DL_test_id,fullName)values(2345,300,'salman')on duplicate key update fullName='siran';
replace into DRIVING_LICENCE_INFO(DL_id,fullName,address)values(8675,'sanjana','delhi');

CREATE TABLE DRIVING_LICENCE_TEST_INFORMATION(id int,T_DL_id int,d_name varchar(40),age int,gender varchar(10),test_center varchar(50),written_test_score int,practical_test_score int,total_score int,pass boolean,foreign key(T_DL_id)references DRIVING_LICENCE_INFO(DL_id));
USE RTO;

INSERT INTO DRIVING_LICENCE_TEST_INFORMATION values(1,2345,'smitha',24,'female','center a',50,60,150,true);
INSERT INTO DRIVING_LICENCE_TEST_INFORMATION values(2,2145,'skamal',25,'female','center b',51,61,152,true);
INSERT INTO DRIVING_LICENCE_TEST_INFORMATION values(3,2245,'latha',26,'female','center c',52,62,154,true);
INSERT INTO DRIVING_LICENCE_TEST_INFORMATION values(4,22235,'prema',27,'female','center d',53,63,156,true);
INSERT INTO DRIVING_LICENCE_TEST_INFORMATION values(5,2545,'keerthi',28,'female','center e',54,64,158,true);
INSERT INTO DRIVING_LICENCE_TEST_INFORMATION values(6,2645,'prem',29,'female','center f',55,65,160,true);
INSERT INTO DRIVING_LICENCE_TEST_INFORMATION values(7,2745,'jai',23,'male','center g',56,66,165,true);
INSERT INTO DRIVING_LICENCE_TEST_INFORMATION values(8,2845,'shree',22,'male','center h',57,67,170,true);
INSERT INTO DRIVING_LICENCE_TEST_INFORMATION values(9,2945,'lav',21,'female','center i',58,68,175,true);
INSERT INTO DRIVING_LICENCE_TEST_INFORMATION values(10,3645,'raj',39,'male','center j',59,69,180,true);
INSERT INTO DRIVING_LICENCE_TEST_INFORMATION values(11,3346,'kavya',38,'female','center k',70,80,190,true);
INSERT INTO DRIVING_LICENCE_TEST_INFORMATION values(12,3349,'divay',48,'female','center l',38,39,191,true);
INSERT INTO DRIVING_LICENCE_TEST_INFORMATION values(13,3345,'navya',47,'female','center m',36,37,192,true);
INSERT INTO DRIVING_LICENCE_TEST_INFORMATION values(14,3355,'sahana',46,'female','center n',35,34,193,true);
INSERT INTO DRIVING_LICENCE_TEST_INFORMATION values(15,3385,'samanth',45,'male','center o',42,33,194,true);
INSERT INTO DRIVING_LICENCE_TEST_INFORMATION values(16,6545,'sevnath',44,'female','center p',41,85,195,true);
INSERT INTO DRIVING_LICENCE_TEST_INFORMATION values(17,4345,'lalith',43,'male','center q',43,86,196,true);
INSERT INTO DRIVING_LICENCE_TEST_INFORMATION values(18,4145,'kiran',42,'male','center r',45,44,197,true);
INSERT INTO DRIVING_LICENCE_TEST_INFORMATION values(19,3445,'mithan',41,'male','center s',72,82,198,true);
INSERT INTO DRIVING_LICENCE_TEST_INFORMATION values(20,8745,'kaveri',40,'female','center t',71,81,200,true);

insert into DRIVING_LICENCE_TEST_INFORMATION(T_DL_id,d_name)values(2345,'smitha')on duplicate key update d_name='sahithya';
replace into DRIVING_LICENCE_TEST_INFORMATION(test_center,d_name,age)values('latha center','shitha',24);