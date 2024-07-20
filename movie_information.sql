CREATE DATABASE movie_information;
USE movie_information;

CREATE TABLE movie_information (
  title VARCHAR(255),
  genre VARCHAR(255),
  release_year INT,
  director VARCHAR(255),
  lead_actor VARCHAR(255)
);

ALTER TABLE movie_information
ADD COLUMN runtime INT,
ADD COLUMN rating DECIMAL(2,1),
ADD COLUMN budget BIGINT,
ADD COLUMN box_office BIGINT,
ADD COLUMN awards INT;


ALTER TABLE movie_information
RENAME COLUMN title TO movie_title,
RENAME COLUMN genre TO movie_genre,
RENAME COLUMN release_year TO release_date,
RENAME COLUMN director TO movie_director,
RENAME COLUMN lead_actor TO lead_actor_name;



INSERT  INTO movie_information (movie_title, movie_genre, release_date, movie_director, lead_actor_name, runtime, rating, budget, box_office, awards)
VALUES
  ('Movie1', 'Action', 2020, 'Director1', 'Actor1', 120, 4.5, 10000000, 50000000, 2),
  ('Movie2', 'Comedy', 2019, 'Director2', 'Actor2', 100, 4.0, 5000000, 20000000, 1),
  ('Movie3', 'Thriller', 2021, 'Director3', 'Actor3', 110, 4.8, 20000000, 40000000, 3),
  ('Movie4', 'Romance', 2018, 'Director4', 'Actor4', 130, 4.2, 15000000, 30000000, 2),
  ('Movie5', 'Horror', 2020, 'Director5', 'Actor5', 90, 4.1, 10000000, 25000000, 1),
  ('Movie6', 'Action', 2019, 'Director6', 'Actor6', 120, 4.6, 20000000, 45000000, 2),
  ('Movie7', 'Comedy', 2021, 'Director7', 'Actor7', 100, 4.3, 15000000, 35000000, 2),
  ('Movie8', 'Thriller', 2018, 'Director8', 'Actor8', 110, 4.9, 25000000, 50000000, 3),
  ('Movie9', 'Romance', 2020, 'Director9', 'Actor9', 130, 4.4, 20000000, 40000000, 2),
  ('Movie10', 'Horror', 2019, 'Director10', 'Actor10', 90, 4.0, 10000000, 20000000, 1);
  
  TRUNCATE movie_information;
  SELECT * FROM movie_information;

UPDATE movie_information  set movie_genre='drama' where rating=4.5;
UPDATE movie_information  set movie_genre='trill' where rating=4.1;
UPDATE movie_information  set movie_genre='fitting' where rating=4.2;
UPDATE movie_information  set movie_genre='killing' where rating=4.0;
UPDATE movie_information  set movie_genre='abc' where rating=4.8;

select * from movie_information;

delete from movie_information where awards=3;

select * from movie_information where movie_title='movie1' or awards=2 or release_date=2020;

select * from movie_information where awards in (2,1);

select * from movie_information limit 2;

select * from movie_information;

select * from movie_information where awards=2 and movie_genre='drama'  and runtime=120;


select * from movie_information where runtime not in (120,100,90,130);




