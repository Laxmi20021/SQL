CREATE TABLE metro_info (
    id INT ,
    name VARCHAR(50) NOT NULL UNIQUE,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50),
    country VARCHAR(50),
    opening_year INT,
    length_km DECIMAL(5, 2) CHECK (length_km > 0),
    daily_ridership INT CHECK (daily_ridership >= 0),
    stations_count INT,
    operator VARCHAR(50)
);

INSERT INTO metro_info (id, name, city, state, country, opening_year, length_km, daily_ridership, stations_count, operator) VALUES
(1, 'Metro A', 'City A', 'State A', 'Country A', 2000, 100.5, 100000, 20, 'Operator A'),
(2, 'Metro B', 'City B', 'State B', 'Country B', 2005, 80.0, 200000, 30, 'Operator B'),
(3, 'Metro C', 'City C', 'State C', 'Country C', 2010, 150.0, 300000, 40, 'Operator C'),
(4, 'Metro D', 'City D', 'State D', 'Country D', 2015, 60.5, 50000, 15, 'Operator D'),
(5, 'Metro E', 'City E', 'State E', 'Country E', 2020, 110.7, 120000, 25, 'Operator E'),
(6, 'Metro F', 'City F', 'State F', 'Country F', 1995, 200.0, 250000, 50, 'Operator F'),
(7, 'Metro G', 'City G', 'State G', 'Country G', 1980, 90.3, 90000, 18, 'Operator G'),
(8, 'Metro H', 'City H', 'State H', 'Country H', 2003, 70.8, 80000, 22, 'Operator H'),
(9, 'Metro I', 'City I', 'State I', 'Country I', 2011, 85.6, 75000, 19, 'Operator I'),
(10, 'Metro J', 'City J', 'State J', 'Country J', 1990, 95.5, 60000, 16, 'Operator J'),
(11, 'Metro K', 'City K', 'State K', 'Country K', 2006, 130.4, 170000, 27, 'Operator K'),
(12, 'Metro L', 'City L', 'State L', 'Country L', 2001, 50.0, 30000, 10, 'Operator L'),
(13, 'Metro M', 'City M', 'State M', 'Country M', 2019, 160.9, 280000, 35, 'Operator M'),
(14, 'Metro N', 'City N', 'State N', 'Country N', 2017, 140.7, 210000, 29, 'Operator N'),
(15, 'Metro O', 'City O', 'State O', 'Country O', 1998, 115.5, 140000, 24, 'Operator O'),
(16, 'Metro P', 'City P', 'State P', 'Country P', 2021, 75.8, 95000, 20, 'Operator P'),
(17, 'Metro Q', 'City Q', 'State Q', 'Country Q', 1993, 110.2, 110000, 21, 'Operator Q'),
(18, 'Metro R', 'City R', 'State R', 'Country R', 1985, 170.0, 300000, 37, 'Operator R'),
(19, 'Metro S', 'City S', 'State S', 'Country S', 2016, 200.5, 400000, 45, 'Operator S'),
(20, 'Metro T', 'City T', 'State T', 'Country T', 2020, 200.0, 500000, 50, 'Operator T');

ALTER TABLE metro_info MODIFY state VARCHAR(50) NOT NULL;

ALTER TABLE metro_info ADD CONSTRAINT unique_city UNIQUE (city);

ALTER TABLE metro_info ADD CONSTRAINT check_opening_year CHECK (opening_year > 1900);

ALTER TABLE metro_info ADD CONSTRAINT check_stations_count CHECK (stations_count > 0);

