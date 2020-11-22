# Michaela Kirvan, Ben Lambert
# Project 2, Part 2
# michaela.e.kirvan@vanderbilt.edu, leo.b.lambert@vanderbilt.edu

#This creates the database "temp_db"
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////

DROP DATABASE IF EXISTS temp_db;
CREATE DATABASE temp_db; 

-- TABLE with real datatypes
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////

DROP TABLE IF EXISTS temp_data; 
CREATE TABLE temp_data
(city_dt DATE, 
city_AverageTemperature DECIMAL(10, 6), 
city_AverageTemperatureUncertainty DECIMAL(10,4) UNSIGNED, 
city_City VARCHAR(40), 
city_Country VARCHAR (40), 
city_Latitude VARCHAR (7), 
city_Longitude VARCHAR (7), 
country_dt DATE, 
country_AverageTemperature DECIMAL(10, 6), 
country_AverageTemperatureUncertainty DECIMAL(10,4) UNSIGNED, 
country_Country VARCHAR (40), 
mCity_dt DATE, 
mCity_AverageTemperature DECIMAL(10, 6), 
mCity_AverageTemperatureUncertainty DECIMAL(10,4) UNSIGNED, 
mCity_City VARCHAR(40),
mCity_Country VARCHAR(40), 
mCity_Latitude VARCHAR(7), 
mCity_Longitude VARCHAR(40), 
state_dt DATE, 
state_AverageTemperature DECIMAL(10, 6), 
state_AverageTemperatureUncertainty DECIMAL(10,4) UNSIGNED, 
state_State VARCHAR(40),
state_Country VARCHAR(40), 
dt DATE, 
LandAverageTemperature DECIMAL(10, 6), 
LandAverageTemperatureUncertainty DECIMAL(10,4) UNSIGNED, 
LandMaxTemperature DECIMAL(10, 6), 
LandMaxTemperatureUncertainty DECIMAL(10,4) UNSIGNED, 
LandMinTemperature DECIMAL(10, 6), 
LandMinTemperatureUncertainty DECIMAL(10,4) UNSIGNED, 
LandAndOceanAverageTemperature DECIMAL(10, 6), 
LandAndOceanAverageTemperatureUncertainty DECIMAL(10,4) UNSIGNED
); 

# 5 Table Megatable 
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////

DROP TABLE IF EXISTS land_data; 
CREATE TABLE land_data(
dt VARCHAR(100), #DATE, 
LandAverageTemperature VARCHAR(100), #DECIMAL(10, 6), 
LandAverageTemperatureUncertainty VARCHAR(100), #DECIMAL(10,4) UNSIGNED, 
LandMaxTemperature VARCHAR(100), #DECIMAL(10, 6), 
LandMaxTemperatureUncertainty VARCHAR(100), #DECIMAL(10,4) UNSIGNED, 
LandMinTemperature VARCHAR(100), #DECIMAL(10, 6), 
LandMinTemperatureUncertainty VARCHAR(100), #DECIMAL(10,4) UNSIGNED, 
LandAndOceanAverageTemperature VARCHAR(100), #DECIMAL(10, 6), 
LandAndOceanAverageTemperatureUncertainty VARCHAR(100) #DECIMAL(10,4) UNSIGNED
);

DROP TABLE IF EXISTS city_data; 
CREATE TABLE city_data(
city_dt DATE, 
city_AverageTemperature VARCHAR(100), #DECIMAL(10, 6), 
city_AverageTemperatureUncertainty VARCHAR(100), #DECIMAL(10,4) UNSIGNED, 
city_City VARCHAR(100), #VARCHAR(40), 
city_Country VARCHAR(100), #VARCHAR (40), 
city_Latitude VARCHAR(100), #VARCHAR (7), 
city_Longitude VARCHAR(100));


DROP TABLE IF EXISTS country_data; 
CREATE TABLE country_data (
country_dt VARCHAR(100), #DATE, 
country_AverageTemperature VARCHAR(100), #DECIMAL(10, 6), 
country_AverageTemperatureUncertainty VARCHAR(100), #DECIMAL(10,4) UNSIGNED, 
country_Country VARCHAR(100) #VARCHAR (40)
);


DROP TABLE IF EXISTS major_city_data; 
CREATE TABLE major_city_data (
mCity_dt VARCHAR(100), #DATE, 
mCity_AverageTemperature VARCHAR(100), #DECIMAL(10, 6), 
mCity_AverageTemperatureUncertainty VARCHAR(100), #DECIMAL(10,4) UNSIGNED, 
mCity_City VARCHAR(100), #VARCHAR(40),
mCity_Country VARCHAR(100), #VARCHAR(40), 
mCity_Latitude VARCHAR(100), #VARCHAR(7), 
mCity_Longitude VARCHAR(100)
);

DROP TABLE IF EXISTS state_data; 
CREATE TABLE state_data (
state_dt VARCHAR(100), #DATE, 
state_AverageTemperature VARCHAR(100), #DECIMAL(10, 6), 
state_AverageTemperatureUncertainty VARCHAR(100), #DECIMAL(10,4) UNSIGNED, 
state_State VARCHAR(100), #VARCHAR(40),
state_Country VARCHAR(100)
);



-- TABLE with all VARCHAR values for easy insertion
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////

DROP TABLE IF EXISTS temp_data; 
CREATE TABLE temp_data
(city_dt DATE, 
city_AverageTemperature VARCHAR(100), #DECIMAL(10, 6), 
city_AverageTemperatureUncertainty VARCHAR(100), #DECIMAL(10,4) UNSIGNED, 
city_City VARCHAR(100), #VARCHAR(40), 
city_Country VARCHAR(100), #VARCHAR (40), 
city_Latitude VARCHAR(100), #VARCHAR (7), 
city_Longitude VARCHAR(100), #VARCHAR (7), 
country_dt VARCHAR(100), #DATE, 
country_AverageTemperature VARCHAR(100), #DECIMAL(10, 6), 
country_AverageTemperatureUncertainty VARCHAR(100), #DECIMAL(10,4) UNSIGNED, 
country_Country VARCHAR(100), #VARCHAR (40), 
mCity_dt VARCHAR(100), #DATE, 
mCity_AverageTemperature VARCHAR(100), #DECIMAL(10, 6), 
mCity_AverageTemperatureUncertainty VARCHAR(100), #DECIMAL(10,4) UNSIGNED, 
mCity_City VARCHAR(100), #VARCHAR(40),
mCity_Country VARCHAR(100), #VARCHAR(40), 
mCity_Latitude VARCHAR(100), #VARCHAR(7), 
mCity_Longitude VARCHAR(100), #VARCHAR(40), 
state_dt VARCHAR(100), #DATE, 
state_AverageTemperature VARCHAR(100), #DECIMAL(10, 6), 
state_AverageTemperatureUncertainty VARCHAR(100), #DECIMAL(10,4) UNSIGNED, 
state_State VARCHAR(100), #VARCHAR(40),
state_Country VARCHAR(100), #VARCHAR(40), 
dt VARCHAR(100), #DATE, 
LandAverageTemperature VARCHAR(100), #DECIMAL(10, 6), 
LandAverageTemperatureUncertainty VARCHAR(100), #DECIMAL(10,4) UNSIGNED, 
LandMaxTemperature VARCHAR(100), #DECIMAL(10, 6), 
LandMaxTemperatureUncertainty VARCHAR(100), #DECIMAL(10,4) UNSIGNED, 
LandMinTemperature VARCHAR(100), #DECIMAL(10, 6), 
LandMinTemperatureUncertainty VARCHAR(100), #DECIMAL(10,4) UNSIGNED, 
LandAndOceanAverageTemperature VARCHAR(100), #DECIMAL(10, 6), 
LandAndOceanAverageTemperatureUncertainty VARCHAR(100) #DECIMAL(10,4) UNSIGNED
); 
 


#load data from files
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////

#file 1
LOAD DATA INFILE '/Applications/MAMP/tmp/archive/GlobalTemperatures.csv' INTO TABLE land_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(dt,LandAverageTemperature, LandAverageTemperatureUncertainty, LandMaxTemperature, 
    LandMaxTemperatureUncertainty, LandMinTemperature, LandMinTemperatureUncertainty, 
    LandAndOceanAverageTemperature, LandAndOceanAverageTemperatureUncertainty); 
    


#file2
LOAD DATA INFILE '/Applications/MAMP/tmp/archive/GlobalLandTemperaturesByCity.csv' INTO TABLE city_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
	(city_dt,city_AverageTemperature, city_AverageTemperatureUncertainty, 
	city_City,city_Country, city_Latitude, city_Longitude); 


#file3
LOAD DATA INFILE '/Applications/MAMP/tmp/archive/GlobalLandTemperaturesByCountry.csv' INTO TABLE country_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(country_dt, country_AverageTemperature, country_AverageTemperatureUncertainty, country_Country); 


#file4
LOAD DATA INFILE '/Applications/MAMP/tmp/archive/GlobalLandTemperaturesByMajorCity.csv' INTO TABLE major_city_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(mCity_dt,mCity_AverageTemperature, mCity_AverageTemperatureUncertainty, 
	mCity_City,mCity_Country, mCity_Latitude, mCity_Longitude); 


#file5
LOAD DATA INFILE '/Applications/MAMP/tmp/archive/GlobalLandTemperaturesByState.csv' INTO TABLE state_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(state_dt, state_AverageTemperature, state_AverageTemperatureUncertainty, state_State, state_Country); 


#decomposed tables 
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////


#land table 
SET FOREIGN_KEY_CHECKS=0; 
DROP TABLE IF EXISTS land; 
SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE land
(land_id INT AUTO_INCREMENT, 
PRIMARY KEY (land_id));

#country table 
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS country; 
SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE country
(country_id INT AUTO_INCREMENT, 
country_Country VARCHAR (50), 
PRIMARY KEY (country_id, country_Country));

#city table 
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS city; 
SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE city
(city_id INT AUTO_INCREMENT, 
city_City VARCHAR (50), 
city_Country VARCHAR (50),
city_Latitude VARCHAR (20),
city_Longitude VARCHAR (20), 
PRIMARY KEY (city_id),
CONSTRAINT fk_city_country
	FOREIGN KEY (city_Country)
    REFERENCES country(country_Country) ON DELETE CASCADE
); 

#major city table 
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS major_city; 
SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE major_city
(mCity_id INT AUTO_INCREMENT, 
mCity_City VARCHAR (50), 
mCity_Country VARCHAR (50),
mCity_Latitude VARCHAR (20),
mCity_Longitude VARCHAR (20), 
PRIMARY KEY (mCity_id),
CONSTRAINT fk_mCity_country
	FOREIGN KEY (mCity_Country)
    REFERENCES country(country_Country) ON DELETE CASCADE
); 

#state table 
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS state; 
SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE state
(state_id INT AUTO_INCREMENT,
state_State VARCHAR (20), 
state_Country VARCHAR (50),
PRIMARY KEY(state_id),
CONSTRAINT fk_state_country
	FOREIGN KEY (state_Country)
    REFERENCES country(country_Country)  ON DELETE CASCADE
);

#stateAvg table 
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS stateAvg; 
SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE stateAvg
(state_State VARCHAR (20),
state_dt DATE, 
avg_temp DECIMAL (8,4), 
avg_temp_uncertainty DECIMAL (8,4), 
PRIMARY KEY (state_dt, state_State),
CONSTRAINT fk_state_stateAvg
	FOREIGN KEY (state_State)
    REFERENCES state(state_State)  ON DELETE CASCADE
); 

#cityAvg table 
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS cityAvg; 
SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE cityAvg
(city_City VARCHAR (50), 
city_dt DATE, 
avg_temp DECIMAL (8,4), 
avg_temp_uncertainty DECIMAL (8,4),
PRIMARY KEY (city_City, city_dt),
CONSTRAINT fk_city_cityAvg
	FOREIGN KEY (city_City)
    REFERENCES city(city_City)  ON DELETE CASCADE
); 

#countryAvg table 
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS countryAvg; 
SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE countryAvg
(country_Country VARCHAR (50),
country_dt DATE, 
avg_temp DECIMAL (8,4), 
avg_temp_uncertainty DECIMAL (8,4),
PRIMARY KEY (country_Country, country_dt),
CONSTRAINT fk_country_countryAvg
	FOREIGN KEY (country_Country)
    REFERENCES country(country_Country) ON DELETE CASCADE
); 

#majorCityAvg table 
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS majorCityAvg; 
SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE majorCityAvg
(mCity_City VARCHAR (50), 
mCity_dt DATE, 
mCity_Country VARCHAR (50), 
mCity_Latitude VARCHAR (20), 
mCity_Longitude VARCHAR (20), 
PRIMARY KEY (mCity_City, mCity_dt),
CONSTRAINT fk_mCity_mCityAvg
	FOREIGN KEY (mCity_City)
    REFERENCES major_city(mCity_City) ON DELETE CASCADE
); 

#landAvg table 
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS landAvg; 
SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE landAvg
(land_dt DATE, 
land_id INT,
avg_temp DECIMAL (8,4), 
avg_temp_uncertainty DECIMAL (8,4), 
max_temp DECIMAL (8,4), 
min_temp DECIMAL (8,4), 
max_temp_uncertainty DECIMAL (8,4), 
min_temp_uncertainty DECIMAL (8,4),
PRIMARY KEY (land_dt, land_id), 
CONSTRAINT fk_land_landAvg
	FOREIGN KEY (land_id)
    REFERENCES land(land_id)  ON DELETE CASCADE
); 


#Insert data into decomposed tables
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////


#insert country data
INSERT INTO country (
country_Country)
SELECT country_Country
FROM country_data; 


#insert state data 
INSERT INTO state (
state_State)
SELECT 
state_State
FROM state_data;

#insert city data 
INSERT INTO city(
city_City, 
city_Latitude, 
city_Longitude)
SELECT city_City, 
city_Latitude, 
city_Longitude
FROM city_data; 

#insert major city data 
INSERT INTO major_city(
mCity_City, 
mCity_Latitude, 
mCity_Longitude)
SELECT mCity_City, 
mCity_Latitude, 
mCity_Longitude
FROM major_city_data; 

#insert average country data 
INSERT INTO countryAvg(
country_dt, 
avg_temp, 
avg_temp_uncertainty)
SELECT country_dt, 
country_AverageTemperature, 
country_AverageTemperatureUncertainty
FROM country_data; 

#insert average state data 
INSERT INTO stateAvg(
state_dt, 
avg_temp, 
avg_temp_uncertainty)
SELECT state_dt, 
state_AverageTemperature, 
state_AverageTemperatureUncertainty
FROM state_data; 

#insert average city data 
INSERT INTO cityAvg(
city_dt, 
avg_temp, 
avg_temp_uncertainty)
SELECT city_dt, 
city_AverageTemperature, 
city_AverageTemperatureUncertainty
FROM city_data; 


#insert average major city data 
INSERT INTO majorCityAvg(
mCity_dt, 
avg_temp, 
avg_temp_uncertainty)
SELECT mCity_dt, 
mCity_AverageTemperature, 
mCity_AverageTemperatureUncertainty
FROM major_city_data; 

#insert average land data 
INSERT INTO landAvg(
land_dt, 
avg_temp, 
avg_temp_uncertainty,
max_temp, 
min_temp, 
max_temp_uncertainty,
min_temp_uncertainty
)
SELECT dt, 
LandAverageTemperature, 
LandAverageTemperatureUncertainty,
LandMaxTemperature, 
LandMinTemperature, 
LandMaxTemperatureUncertainty,
LandMinTemperatureUncertainty
FROM land_data; 


# Views
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////

# countries and their averages 
DROP VIEW IF EXISTS countries_average_temps; 
CREATE VIEW countries_average_temps AS 

SELECT  country_Country, AVG(avg_temp) as average_temp
FROM countryAvg
GROUP BY country_Country; 


# states and their averages 
DROP VIEW IF EXISTS states_average_temps; 
CREATE VIEW states_average_temps AS 

SELECT  state_State, AVG(avg_temp) as average_temp
FROM stateAvg
GROUP BY state_State; 


# cities and their averages 
DROP VIEW IF EXISTS cities_average_temps; 
CREATE VIEW cities_average_temps AS 

SELECT  city_City, AVG(avg_temp) as average_temp
FROM cityAvg
GROUP BY city_City; 

# major cities and their averages 
DROP VIEW IF EXISTS major_cities_average_temps; 
CREATE VIEW major_cities_average_temps AS 

SELECT  mCity_City, AVG(avg_temp) as average_temp
FROM majorCityAvg
GROUP BY mCity_City; 



# Stored Procedures
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////


# Stored procedure to compare COUNTRIES
DROP PROCEDURE IF EXISTS compare_countries; 

DELIMITER //

CREATE PROCEDURE compare_countries(
	IN country_input VARCHAR (50))
BEGIN

SELECT country_Country, average_temp
FROM countries_average_temps
WHERE country_Country = country_input; 

END//

DELIMITER ; 


# Stored procedure to compare STATES
DROP PROCEDURE IF EXISTS compare_states; 

DELIMITER //

CREATE PROCEDURE compare_states(
	IN state_input VARCHAR (20))
BEGIN

SELECT state_State, average_temp
FROM states_average_temps
WHERE state_State = state_input; 

END//

DELIMITER ; 


 # Stored procedure to compare MAJOR CITIES
DROP PROCEDURE IF EXISTS compare_major_cities; 

DELIMITER //

CREATE PROCEDURE compare_major_cities(
	IN major_city_input VARCHAR (50))
BEGIN

SELECT mCity_City, average_temp
FROM major_cities_average_temps
WHERE mCityCity=major_city_input; 

END//

DELIMITER ; 


 # Stored procedure to compare  CITIES
DROP PROCEDURE IF EXISTS compare_cities; 

DELIMITER //

CREATE PROCEDURE compare_cities(
	IN city_input VARCHAR (50))
BEGIN

SELECT city_City, average_temp
FROM cities_average_temps
WHERE city_City = city_input; 

END//

DELIMITER ; 






