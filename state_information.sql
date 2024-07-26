CREATE DATABASE  state_information;

USE state_information;


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




-- Fetch using AND
SELECT * FROM state_information WHERE population > 10000000 AND area > 50000;

-- Fetch using OR
SELECT * FROM state_information WHERE population > 10000000 OR area > 50000;


select * from state_information;