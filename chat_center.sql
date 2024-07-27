CREATE TABLE chat_center(id int not null,c_center_name varchar(20),c_owner_name varchar(30) not null unique,available_chats varchar(30),c_profit bigint,selling_chat bigint,c_loc varchar(20),c_menu varchar(20),c_customer_day int,c_employer int,constraint c_menu_uni unique(c_menu),constraint c_customer_day_chk check(c_customer_day>1),constraint c_profit_chk check(c_profit>500));
desc chat_center;

INSERT INTO chat_center VALUES(1,'ganesh chats','ganesh','gobi',6000,100,'rajajinagar','items of chats',50,3);
INSERT INTO chat_center VALUES(2,'viswa chats','vishwa','masalagobi',7000,200,'btm','items of gobi',60,4);
INSERT INTO chat_center VALUES(3,'gowdru chats','madan','noodles',5700,190,'magadi','items of masals',55,5);
INSERT INTO chat_center VALUES(4,'keerthana chats','keerthi','fried rice',5090,150,'jaynagar','items of juice',61,6);
INSERT INTO chat_center VALUES(5,'girish chats','girish','panipuri',5500,107,'rr nagar','items of fried',59,7);
INSERT INTO chat_center VALUES(6,'sowmya chats','sowmya','masal puri',5200,130,'r nagar','items of rice',54,8);
INSERT INTO chat_center VALUES(7,'lav chats','lav','dry gobi',5870,160,'chikpete','items of food',53,9);
INSERT INTO chat_center VALUES(8,'kavya chats','kavya','juice',5078,190,'gadag','items of zeera',52,11);
INSERT INTO chat_center VALUES(9,'divya chats','divya','lemon juice',5066,134,'nagarbhjavi','items of noodles',60,12);
INSERT INTO chat_center VALUES(10,'renuka chats','renuka','butter fruit',5360,110,'mg road','items of snacks',70,13);
INSERT INTO chat_center VALUES(11,'surya chats','surya','roti',6500,200,'kkp','items of kfc',62,15);
INSERT INTO chat_center VALUES(12,'kkp chats','','peenut buttor',6010,109,'rajajinagar','items of puris',60,16);
INSERT INTO chat_center VALUES(13,'magadi chats','pree','watermelon',6020,108,'rajajinagar','items of  panees',70,17);
INSERT INTO chat_center VALUES(14,'yash chats','yash','pineple juice',6030,107,'rajajinagar','items of chocklate',72,18);
INSERT INTO chat_center VALUES(15,'kamla chats','kamla','candy',6040,106,'rajajinagar','items of products',73,19);
INSERT INTO chat_center VALUES(16,'sahana chats','sahan','puris',6050,105,'rajajinagar','items of sugers',75,20);
INSERT INTO chat_center VALUES(17,'sri chats','sri','fruits',6060,104,'rajajinagar','items of chai',76,31);
INSERT INTO chat_center VALUES(18,'kiran chats','kiran','sweets',6070,103,'rajajinagar','items of grills',79,32);
INSERT INTO chat_center VALUES(19,'nayan chats','nayan','save puri',6080,101,'rajajinagar','items of veg',81,33);
INSERT INTO chat_center VALUES(20,'geetha chats','geetha','dall',60090,102,'rajajinagar','items of nonveg',80,34);

ALTER TABLE chat_center modify c_employer int not null;
ALTER TABLE chat_center add constraint c_customer_day_check check(c_customer_day>10);
ALTER TABLE chat_center add constraint c_customer_day_uni unique(c_customer_day);