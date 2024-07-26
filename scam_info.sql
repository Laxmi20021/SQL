CREATE DATABASE  scam_info;

USE scam_info;

CREATE TABLE scam_info (
    scam_id INT ,
    scam_name VARCHAR(100),
    scam_type VARCHAR(100),
    affected_population INT,
    amount_lost DECIMAL(15, 2),
    date_reported DATE,
    state_id INT,
    reporting_agency VARCHAR(100),
    status VARCHAR(50),
    notes TEXT
);


ALTER TABLE scam_info
ADD (number_of_victims INT, 
     scam_duration INT, 
     scam_origin VARCHAR(100), 
     investigation_status VARCHAR(50), 
     recovery_rate FLOAT);


ALTER TABLE scam_info
RENAME COLUMN scam_name TO name,
RENAME COLUMN scam_type TO type,
RENAME COLUMN affected_population TO population_affected,
RENAME COLUMN amount_lost TO loss_amount,
RENAME COLUMN date_reported TO reported_date;



ALTER TABLE scam_info
MODIFY name VARCHAR(150),
MODIFY type VARCHAR(150),
MODIFY population_affected BIGINT,
MODIFY loss_amount FLOAT,
MODIFY reported_date DATETIME;



INSERT INTO scam_info (scam_id, name, type, population_affected, loss_amount, reported_date, state_id, reporting_agency, status, notes, number_of_victims, scam_duration, scam_origin, investigation_status, recovery_rate)
VALUES
(1, 'Phishing Scam', 'Email Fraud', 1000000, 5000000.00, '2023-01-01 00:00:00', 1, 'FBI', 'Ongoing', 'High-tech email scam', 50000, 30, 'Unknown', 'Investigating', 0.1),
(2, 'Ponzi Scheme', 'Investment Fraud', 500000, 10000000.00, '2023-02-01 00:00:00', 2, 'SEC', 'Closed', 'Ponzi scheme defrauding investors', 20000, 365, 'New York', 'Concluded', 0.3),
(3, 'Identity Theft', 'Personal Fraud', 2000000, 2000000.00, '2023-03-01 00:00:00', 3, 'FTC', 'Ongoing', 'Mass identity theft', 100000, 60, 'Florida', 'Investigating', 0.05),
(4, 'Credit Card Fraud', 'Financial Fraud', 1500000, 3000000.00, '2023-04-01 00:00:00', 4, 'FBI', 'Ongoing', 'Credit card information stolen', 75000, 45, 'Unknown', 'Investigating', 0.2),
(5, 'Tax Fraud', 'Financial Fraud', 1000000, 15000000.00, '2023-05-01 00:00:00', 5, 'IRS', 'Closed', 'False tax returns', 50000, 120, 'Pennsylvania', 'Concluded', 0.4),
(6, 'Charity Scam', 'Donation Fraud', 500000, 1000000.00, '2023-06-01 00:00:00', 6, 'FTC', 'Ongoing', 'Fake charity soliciting donations', 20000, 90, 'Illinois', 'Investigating', 0.15),
(7, 'Online Shopping Scam', 'E-commerce Fraud', 3000000, 5000000.00, '2023-07-01 00:00:00', 7, 'FBI', 'Ongoing', 'Fake online stores', 150000, 60, 'Ohio', 'Investigating', 0.1),
(8, 'Lottery Scam', 'Prize Fraud', 1000000, 2000000.00, '2023-08-01 00:00:00', 8, 'FTC', 'Closed', 'Fake lottery winnings', 50000, 30, 'Georgia', 'Concluded', 0.2),
(9, 'Insurance Fraud', 'Financial Fraud', 2000000, 10000000.00, '2023-09-01 00:00:00', 9, 'FBI', 'Ongoing', 'False insurance claims', 100000, 180, 'North Carolina', 'Investigating', 0.25),
(10, 'Telemarketing Scam', 'Phone Fraud', 2500000, 5000000.00, '2023-10-01 00:00:00', 10, 'FTC', 'Ongoing', 'Fraudulent telemarketing calls', 125000, 90, 'Michigan', 'Investigating', 0.05);



UPDATE scam_info SET name = 'Advanced Phishing Scam' WHERE scam_id = 1;
UPDATE scam_info SET type = 'Advanced Investment Fraud' WHERE scam_id = 2;
UPDATE scam_info SET population_affected = 2500000 WHERE scam_id = 3;
UPDATE scam_info SET loss_amount = 2500000.00 WHERE scam_id = 4;
UPDATE scam_info SET reported_date = '2023-06-01 00:00:00' WHERE scam_id = 5;
UPDATE scam_info SET state_id = 10 WHERE scam_id = 6;
UPDATE scam_info SET reporting_agency = 'IRS' WHERE scam_id = 7;
UPDATE scam_info SET status = 'Resolved' WHERE scam_id = 8;
UPDATE scam_info SET notes = 'Insurance fraud detected in multiple states' WHERE scam_id = 9;
UPDATE scam_info SET number_of_victims = 200000 WHERE scam_id = 10;



DELETE FROM scam_info WHERE scam_id IN (1, 2, 3);





SELECT * FROM scam_info WHERE scam_id IN (4, 5, 6);

SELECT * FROM scam_info WHERE scam_id NOT IN (4, 5, 6);



select * from scam_info;

