CREATE DATABASE IF NOT EXISTS Pollution;
USE Pollution;

-- select * from plastics;

-- use plastics ;

-- Create the Country table
CREATE TABLE Country (
    country_id INT AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(255) NOT NULL
);

-- Create the Company table
CREATE TABLE Company (
    company_id INT AUTO_INCREMENT PRIMARY KEY,
    company_name VARCHAR(255) NOT NULL
);

-- Create the PlasticData table, linking it to Country and Company
CREATE TABLE PlasticData (
    plastic_data_id INT AUTO_INCREMENT PRIMARY KEY,
    country_id INT,
    company_id INT,
    year INT,
    hdpe FLOAT,
    ldpe FLOAT,
    o FLOAT,
    pet FLOAT,
    pp FLOAT,
    ps FLOAT,
    pvc FLOAT,
    grand_total FLOAT,
    num_events INT,
    volunteers FLOAT,
    FOREIGN KEY (country_id) REFERENCES Country(country_id),
    FOREIGN KEY (company_id) REFERENCES Company(company_id)
);

-- Inserting sample data into Country table
INSERT INTO Country (country_name)
VALUES
('Argentina'),
('Brazil'),
('Chile');

-- Inserting sample data into Company table
INSERT INTO Company (company_name)
VALUES
('Grand Total'),
('Unbranded'),
('The Coca-Cola Company');
select * from company;
-- Inserting sample data into PlasticData table
INSERT INTO PlasticData (country_id, company_id, year, hdpe, ldpe, o, pet, pp, ps, pvc, grand_total, num_events, volunteers)
VALUES
(1, 1, 2019, 215.0, 55.0, 607.0, 1376.0, 281.0, 116.0, 18.0, 2668.0, 4, 243.0),
(1, 2, 2019, 155.0, 50.0, 532.0, 848.0, 122.0, 114.0, 17.0, 1838.0, 4, 243.0),
(1, 3, 2019, 0.0, 0.0, 0.0, 222.0, 35.0, 0.0, 0.0, 257.0, 4, 243.0);

select * from plasticdata;