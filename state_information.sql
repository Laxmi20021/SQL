CREATE DATABASE  state_information;

USE state_information;
drop table state_information;

CREATE TABLE state_information (
    id INT ,
    state_name VARCHAR(100),
    population INT,
    area FLOAT,
    governor VARCHAR(100),
    capital VARCHAR(100),
    founded_date DATE,
    state_code CHAR(2),
    timezone VARCHAR(50),
    official_language VARCHAR(50)
);




ALTER TABLE state_information
ADD (gdp FLOAT, 
     tourist_attractions TEXT, 
     major_industries VARCHAR(100), 
     literacy_rate FLOAT, 
     unemployment_rate FLOAT);




ALTER TABLE state_information
RENAME COLUMN gdp TO gross_domestic_product,
RENAME COLUMN tourist_attractions TO attractions,
RENAME COLUMN major_industries TO industries,
RENAME COLUMN literacy_rate TO literacy,
RENAME COLUMN unemployment_rate TO unemployment;




ALTER TABLE state_information
MODIFY state_name VARCHAR(150),
MODIFY governor VARCHAR(150),
MODIFY founded_date DATETIME,
MODIFY timezone VARCHAR(100),
MODIFY official_language VARCHAR(100);





INSERT INTO state_information (id, state_name, population, area, governor, capital, founded_date, state_code, timezone, official_language, gross_domestic_product, attractions, industries, literacy, unemployment)
VALUES
(1, 'California', 39538223, 163696, 'Gavin Newsom', 'Sacramento', '1850-09-09 00:00:00', 'CA', 'PST', 'English', 3000000, 'Disneyland, Yosemite', 'Technology, Agriculture', 94.6, 7.5),
(2, 'Texas', 29145505, 268596, 'Greg Abbott', 'Austin', '1845-12-29 00:00:00', 'TX', 'CST', 'English', 2000000, 'Alamo, Space Center', 'Energy, Agriculture', 90.3, 8.1),
(3, 'Florida', 21538187, 65758, 'Ron DeSantis', 'Tallahassee', '1845-03-03 00:00:00', 'FL', 'EST', 'English', 1000000, 'Disney World, Everglades', 'Tourism, Agriculture', 92.0, 6.2),
(4, 'New York', 20201249, 54555, 'Kathy Hochul', 'Albany', '1788-07-26 00:00:00', 'NY', 'EST', 'English', 1500000, 'Statue of Liberty, Times Square', 'Finance, Media', 93.2, 5.7),
(5, 'Pennsylvania', 13002700, 46054, 'Tom Wolf', 'Harrisburg', '1787-12-12 00:00:00', 'PA', 'EST', 'English', 600000, 'Liberty Bell, Hersheypark', 'Manufacturing, Agriculture', 91.3, 6.5),
(6, 'Illinois', 12812508, 57914, 'J.B. Pritzker', 'Springfield', '1818-12-03 00:00:00', 'IL', 'CST', 'English', 900000, 'Millennium Park, Navy Pier', 'Manufacturing, Agriculture', 90.1, 7.3),
(7, 'Ohio', 11799448, 44825, 'Mike DeWine', 'Columbus', '1803-03-01 00:00:00', 'OH', 'EST', 'English', 700000, 'Cedar Point, Rock & Roll Hall of Fame', 'Manufacturing, Agriculture', 89.4, 6.8),
(8, 'Georgia', 10711908, 59425, 'Brian Kemp', 'Atlanta', '1788-01-02 00:00:00', 'GA', 'EST', 'English', 800000, 'Georgia Aquarium, Stone Mountain', 'Agriculture, Manufacturing', 91.2, 6.9),
(9, 'North Carolina', 10439388, 53819, 'Roy Cooper', 'Raleigh', '1789-11-21 00:00:00', 'NC', 'EST', 'English', 700000, 'Great Smoky Mountains, Biltmore Estate', 'Manufacturing, Agriculture', 89.8, 7.0),
(10, 'Michigan', 10077331, 96714, 'Gretchen Whitmer', 'Lansing', '1837-01-26 00:00:00', 'MI', 'EST', 'English', 600000, 'Mackinac Island, Detroit Institute of Arts', 'Manufacturing, Agriculture', 90.5, 7.4);




select * from state_information;

desc state_information;

UPDATE state_information SET population = 40000000 WHERE id = 1;
UPDATE state_information SET area = 170000 WHERE id = 2;
UPDATE state_information SET governor = 'Jane Doe' WHERE id = 3;
UPDATE state_information SET capital = 'New York City' WHERE id = 4;
UPDATE state_information SET founded_date = '1787-12-25 00:00:00' WHERE id = 5;
UPDATE state_information SET state_code = 'IL' WHERE id = 6;
UPDATE state_information SET timezone = 'CST' WHERE id = 7;
UPDATE state_information SET official_language = 'Spanish' WHERE id = 8;
UPDATE state_information SET gross_domestic_product = 5000000 WHERE id = 9;
UPDATE state_information SET literacy = 98.0 WHERE id = 10;





DELETE FROM state_information WHERE id IN (1, 2, 3);





SELECT * FROM state_information WHERE population > 10000000 AND area > 50000;

SELECT * FROM state_information WHERE population > 10000000 OR area > 50000;


select * from state_information;


select * from state_information order by id;
select * from state_info order by id desc;

select DISTINCT FROM WHERE GROUP BY HAVING ORDER BY;
/**execution sequence of query**/
SELECT * FROM state_info order by no_of_district desc;
select * from state_info order by state_name;
select * from state_info where s_population > 1130704 order by id;

/**LIKE: Pattern matching 
wildcards:% and  _ **/
select * from state_info where state_name like 'a%';
select * from state_info where state_name like 's%';
select * from state_info where state_name like 'k%';
select * from state_info where state_name like 'm%h%a';
select * from state_info where state_name like 'k%a%';
select * from state_info where s_langauge like '%a';

select * from state_info where state_name like '_a%';
select * from state_info where satate_name like 'k%_';
select * from state_info where satate_name like 'm%_';


/**between**:used to specify the rate**/

select * from state_info where id between 10 and 15;
select * from state_info where state_name between 'a' and 'g';











































//////////////////////////////


CREATE DATABASE state_details;

USE state_details;

CREATE TABLE state_details(id int,s_name varchar(20),s_pincode int,s_famous_food varchar(20),s_famous_place varchar(20),s_famous_temple varchar(20));

ALTER TABLE state_details ADD COLUMN s_festival_name varchar(20);
ALTER TABLE state_details ADD COLUMN s_famous_museum varchar(20);
ALTER TABLE state_details ADD COLUMN s_famous_hills varchar(30);
ALTER TABLE state_details ADD COLUMN s_waterfalls varchar(20);
ALTER TABLE state_details ADD COLUMN s_capital varchar(30);

ALTER TABLE state_details RENAME COLUMN s_famous_food TO s_famous_dishes;
ALTER TABLE state_details RENAME COLUMN s_famous_hills TO s_mountains_count;
ALTER TABLE state_details RENAME COLUMN s_festival_name TO s_festival_title;
ALTER TABLE state_details RENAME COLUMN s_name TO s_title;
ALTER TABLE state_details RENAME COLUMN s_waterfalls TO s_rivers;


ALTER TABLE state_details MODIFY COLUMN s_mountains_count int;
ALTER TABLE state_details MODIFY COLUMN s_pincode bigint;

SELECT * FROM state_details;

INSERT INTO state_details VALUES(1,'Karnataka',560009,'Dosa','Hampi','Murdeshwara','Ugadi','Kempegowda','Mullyanagiri','jogfalls','Bengaluru');
INSERT INTO state_details VALUES(2,'Kerala',676123,'Malabar Parota','Munnar','Ananthapadmanabha','Onam','Indo-Portuguese','Wayanad','Periyar','Thiruvananthapuram');
INSERT INTO state_details VALUES(3,'TamilNadu',600001,'Idli','Ooty','Coimbatore','Pongal','Government','Kodaikanal','Kumbakkarai','Chennai');
INSERT INTO state_details VALUES(4,'Goa',403514,'Kismur','Beach','Mahadev','GoaCarnival','Chitra','Coorg','Dudhsagar','Panaji');
INSERT INTO state_details VALUES(5,'AP',676123,'Parota','Tirupathi','Thalpagiri Ranganadha','Vinayaka Chaturthi','PrivateTour','Horsley','Talakona','Amaravati');
INSERT INTO state_details VALUES(6,'Bihar',765423,'Puri','Munnar','LaxmiDevi','Deepavali','Indo-Portuguese','Wayanad','Periyar','Litti');
INSERT INTO state_details VALUES(7,'Gujarat',987654,'Samosa','Munnar','Somnath Temple','Navratri ','Indo-Portuguese','Wayanad','Periyar','Patna');
INSERT INTO state_details VALUES(8,'HP',237689,'Kajju','Munnar','Maa Chintpurni ','Gochi ','Indo-Portuguese','Wayanad','Periyar','Shimla');
INSERT INTO state_details VALUES(9,'MP',976542,'VadaPav','Munnar','Gopal','Lokrang ','Indo-Portuguese','Wayanad','Periyar','Bhupal');
INSERT INTO state_details VALUES(10,'Maharashtra',887650,'Roti','Munnar','Trimbakeshwar','Makar Sankranti','Indo-Portuguese','Wayanad','Periyar','Mumbai');
INSERT INTO state_details VALUES(11,'Rajasthan',122222,'Savjii','Munnar','Birla','Mewar','RajastanMuseum','Guru Shikhar','Periyar','Jaipur');
INSERT INTO state_details VALUES(12,'Manipur',400011,'Pallav','Munnar','Mahabali','Yaosang','StateMuseum','Tamenglong','Periyar','Impal');
INSERT INTO state_details VALUES(13,'Assam',400033,'Luchi','Munnar','Kamakhya','Rajini Gabra','Don Bosco','Haflong','Periyar','Dispur');
INSERT INTO state_details VALUES(14,'Hariyana',987666,'Khichri.','Munnar','Agroha','Guga Navmi','Hariyana','MorniHills','Periyar','Chandigarh');
INSERT INTO state_details VALUES(15,'Punjab',654320,'Chapati','Munnar','GoldenTEmple','Baisakhi','Punjab','Shimla','Periyar','Chandigarh');
INSERT INTO state_details VALUES(16,'WestBengal',672233,'Methigajjar','Munnar','Tarapith','Durga Puja','WBMuseum','Darjeeling.','Periyar','Kolkata');
INSERT INTO state_details VALUES(17,'Uttarakhand',610000,'Rabri','Munnar','Kedarnath','Onam','Indo-Portuguese','Tehri','Periyar','Dehradun');
INSERT INTO state_details VALUES(18,'Odisha',751012,'Khichede','Bhubaneshwar','Jagannath Temple ','Ratha Yatra','Odisha State ','Samibrukshya','Sanaghagara','Bhubaneswar');
INSERT INTO state_details VALUES(19,'Meghalaya',793001,'Nakham Bitchi','Exotic','ISKCON','Shad Sukra.','Don Bosco','Garo Hills','Elephant','Shillong');
INSERT INTO state_details VALUES(20,'Jharkhand',834002,' Dhuska','BabaBaidyanath','PahariMandir','Sarhul','StateMuseum','Parasanath','DassamFalls','Ranchi');




UPDATE state_details SET s_rivers = 'kaveri' WHERE id = 9;
UPDATE state_details SET s_rivers = 'krishna' WHERE id = 2;
UPDATE state_details SET s_rivers = 'sharavati' WHERE id = 10;
UPDATE state_details SET s_rivers = 'tungabhadra' WHERE id = 5;
UPDATE state_details SET s_rivers = 'kali' WHERE id = 8;
UPDATE state_details SET s_rivers = 'penna' WHERE id = 3;
UPDATE state_details SET s_rivers = 'bhima' WHERE id = 7;
UPDATE state_details SET s_rivers = 'malaprabha' WHERE id = 1;
UPDATE state_details SET s_rivers = 'bhadra' WHERE id = 4;
UPDATE state_details SET s_rivers = 'ghataprabha' WHERE id = 6;

DELETE FROM state_details WHERE s_famous_dishes = 'Malabar Parota' AND id = 2;
DELETE FROM state_details WHERE s_title = 'Gujarat' AND s_festival_title = 'Navratri';
DELETE FROM state_details WHERE s_mountains_count = 'Wayanad' AND id = 6;

SELECT * FROM state_details where s_festival_title = 'Onam' AND s_title = 'Kerala';
SELECT * FROM state_details where id = 5 or  s_rivers = 'Talakona';
SELECT * FROM state_details where id in(8,3,5,10);
SELECT * FROM state_details where id  not in(3,5,9,8);

SELECT * FROM state_details;