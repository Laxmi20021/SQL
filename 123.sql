

CREATE TABLE state_info (
  state_id INT,
  state_name VARCHAR(255),
  country_name VARCHAR(255),
  is_coastal BOOLEAN,
  is_landlocked BOOLEAN,
  capital_city VARCHAR(255),
  population INT,
  area_sqkm INT,
  language_spoken VARCHAR(255),
  currency_used VARCHAR(255)
);

CREATE TABLE scam_info (
  scam_id INT,
  scam_name VARCHAR(255),
  scam_type VARCHAR(255),
  is_active BOOLEAN,
  is_reported BOOLEAN,
  scam_description VARCHAR(255),
  scam_amount DECIMAL,
  scam_date DATE,
  scam_location VARCHAR(255),
  scam_status VARCHAR(255)
);




ALTER TABLE state_info ADD COLUMN state_animal VARCHAR(255);
ALTER TABLE state_info ADD COLUMN state_bird VARCHAR(255);
ALTER TABLE state_info ADD COLUMN state_flower VARCHAR(255);
ALTER TABLE state_info ADD COLUMN state_tree VARCHAR(255);
ALTER TABLE state_info ADD COLUMN state_song VARCHAR(255);

ALTER TABLE scam_info ADD COLUMN scam_reporter VARCHAR(255);
ALTER TABLE scam_info ADD COLUMN scam_report_date DATE;
ALTER TABLE scam_info ADD COLUMN scam_update_date DATE;
ALTER TABLE scam_info ADD COLUMN scam_resolution VARCHAR(255);
ALTER TABLE scam_info ADD COLUMN scam_comments VARCHAR(255);




ALTER TABLE state_info RENAME COLUMN is_coastal TO is_state_coastal;
ALTER TABLE state_info RENAME COLUMN is_landlocked TO is_state_landlocked;
ALTER TABLE state_info RENAME COLUMN capital_city TO state_capital;
ALTER TABLE state_info RENAME COLUMN population TO state_population;
ALTER TABLE state_info RENAME COLUMN area_sqkm TO state_area;

ALTER TABLE scam_info RENAME COLUMN is_active TO is_scam_active;
ALTER TABLE scam_info RENAME COLUMN is_reported TO is_scam_reported;
ALTER TABLE scam_info RENAME COLUMN scam_description TO scam_details;
ALTER TABLE scam_info RENAME COLUMN scam_amount TO scam_total_amount;
ALTER TABLE scam_info RENAME COLUMN scam_date TO scam_occurrence_date;


