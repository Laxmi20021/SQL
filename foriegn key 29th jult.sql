create table orders_info(id int, order_name varchar(20), cost double,
order_id int primary key, created_at timestamp, created_by varchar(20),
modified_at timestamp, modified_by varchar(20));
desc orders_info;
select*from orders_info;
insert into orders_info values(1,'saree',456.67,23,now(),'nagaraj',now(),'husen');
insert into orders_info values(2,'flowers',23.67,24,now(),'dhanraj',now(),'jeevitha');
insert into orders_info values(3,'vegitables',345.67,25,now(),'govrav',now(),'surya');
insert into orders_info values(4,'fruits',476.67,26,now(),'yogesh',now(),'ranav');
insert into orders_info values(5,'shoes',566.67,27,now(),'raj',now(),'maxy');
insert into orders_info values(6,'chairs',978.67,28,now(),'gunav',now(),'lohith');
insert into orders_info values(7,'taps',98.67,29,now(),'fiza',now(),'lokesh');
insert into orders_info values(8,'buckets',324.67,36,now(),'karan',now(),'birbal');
insert into orders_info values(9,'books',78.67,37,now(),'geetha',now(),'bhargavi');
insert into orders_info values(10,'blackets',213.67,38,now(),'suresh',now(),'deekshith');

/*creating payment table*/
create table payment_info(id int, price double , payment_id int ,
payment_status int,p_order_id int , created_at timestamp, created_by varchar(20),
modified_at timestamp, modified_by varchar(20),
primary key(p_order_id,payment_id),
foreign key (p_order_id)references orders_info(order_id));

desc payment_info;
select*from payment_info;
insert into payment_info values(1,364,11,5,23,now(),'shamanth',now(),'sunil');
insert into payment_info values(2,4334,12,5,38,now(),'rakesh',now(),'karuna');
insert into payment_info values(3,654,13,4,24,now(),'pooja',now(),'kamala');
insert into payment_info values(4,765,14,5,25,now(),'poojashree',now(),'hunitha');
insert into payment_info values(5,634,15,3,26,now(),'hema',now(),'deva');
insert into payment_info values(6,865,16,3,27,now(),'sonu',now(),'dev');
insert into payment_info values(7,1234,17,2,28,now(),'paddu',now(),'guru');
insert into payment_info values(8,543,18,6,29,now(),'kamala',now(),'jaya');
insert into payment_info values(9,864,19,4,36,now(),'yogi',now(),'kumari');

/*creating restaurant table*/
 create table restaurant_info(id int, restaurant_name varchar(20),
 restaurant_id int , loc varchar(20),r_order_id int , 
 ratings int,r_payment_id int,
 created_at timestamp, created_by varchar(20),
modified_at timestamp, modified_by varchar(20),
primary key(restaurant_id,r_order_id),
foreign key(r_order_id,r_payment_id)references 
payment_info(p_order_id,payment_id));
desc restaurant_info;
insert into restaurant_info values(1,'kavya',341,'bharath nagar',23,5,11,now(),'darshi',now(),'gaurav');
insert into restaurant_info values(2,'u-turn paradice',342,'maruthi nagar',24,5,13,now(),'devendra',now(),'sonal');
insert into restaurant_info values(3,'five star',343,'anjanagar',25,4,14,now(),'lepaksh',now(),'gagana');
insert into restaurant_info values(4,'manasa',344,'nagarbhavi',26,3,15,now(),'tunga',now(),'neethu');
insert into restaurant_info values(5,'rathna',345,'magadi',27,4,16,now(),'chandru',now(),'nethra');
select*from restaurant_info;


create table delivery_info(id int,person_name varchar(20),mode_of_payment 
enum('online','offline'),d_restaurant_id int,d_order_id int,
created_at timestamp, created_by varchar(20),
modified_at timestamp, modified_by varchar(20),
foreign key(d_order_id) references restaurant_info(r_order_id));

desc delivery_info;
insert into delivery_info values(1,'harish',1,5463,23,now(),'guna',now(),'yadhav');
insert into delivery_info values(2,'vinay',2,5354,23,now(),'sagar',now(),'sahil');
insert into delivery_info values(3,'jammu',1,8679,24,now(),'chandra',now(),'govinda');
insert into delivery_info values(4,'gunda',1,2145,25,now(),'venkatesh',now(),'jayram');
insert into delivery_info values(5,'geetha',1,6879,23,now(),'ramu',now(),'anjani');
insert into delivery_info values(6,'ganavi',1,8769,26,now(),'rolex',now(),'madhura');
select*from delivery_info;