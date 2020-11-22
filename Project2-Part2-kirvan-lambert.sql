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
DROP TABLE IF EXISTS land; 
CREATE TABLE land
(land_id INT AUTO_INCREMENT, 
PRIMARY KEY (land_id));

#land table 
DROP TABLE IF EXISTS country; 
CREATE TABLE country
(country_Country VARCHAR (50), 
PRIMARY KEY (country_Country));

#city table 
DROP TABLE IF EXISTS city; 
CREATE TABLE city
(city_City VARCHAR (50), 
city_Country VARCHAR (50),
city_Latitude DECIMAL(10,4),
city_Longitude DECIMAL(10,4), 
PRIMARY KEY (city_City),
CONSTRAINT fk_city_country
	FOREIGN KEY (city_Country)
    REFERENCES country(country_Country)
); 

#major city table 
DROP TABLE IF EXISTS major_city; 
CREATE TABLE major_city
(mCity_City VARCHAR (50), 
mCity_Country VARCHAR (50),
mCity_Latitude DECIMAL(10,4),
mCity_Longitude DECIMAL(10,4), 
PRIMARY KEY (mCity_City),
CONSTRAINT fk_mCity_country
	FOREIGN KEY (mCity_Country)
    REFERENCES country(country_Country)
); 

#state table 
DROP TABLE IF EXISTS state; 
CREATE TABLE state
(state_State VARCHAR (20), 
state_Country VARCHAR (50),
PRIMARY KEY(state_State),
CONSTRAINT fk_state_country
	FOREIGN KEY (state_Country)
    REFERENCES country(country_Country)
);

#stateAvg table 
DROP TABLE IF EXISTS stateAvg; 
CREATE TABLE stateAvg
(state_State VARCHAR (20),
state_dt DATE, 
avg_temp DECIMAL (8,4), 
avg_temp_uncertainty DECIMAL (8,4), 
PRIMARY KEY (state_dt, state_State),
CONSTRAINT fk_state_stateAvg
	FOREIGN KEY (state_State)
    REFERENCES state(state_State)
); 

#cityAvg table 
DROP TABLE IF EXISTS cityAvg; 
CREATE TABLE cityAvg
(city_City VARCHAR (50), 
city_dt DATE, 
avg_temp DECIMAL (8,4), 
avg_temp_uncertainty DECIMAL (8,4),
PRIMARY KEY (city_City, city_dt),
CONSTRAINT fk_city_cityAvg
	FOREIGN KEY (city_City)
    REFERENCES city(city_City)
); 

#countryAvg table 
DROP TABLE IF EXISTS countryAvg; 
CREATE TABLE countryAvg
(country_Country VARCHAR (50),
country_dt DATE, 
avg_temp DECIMAL (8,4), 
avg_temp_uncertainty DECIMAL (8,4),
PRIMARY KEY (country_Country, country_dt),
CONSTRAINT fk_country_countryAvg
	FOREIGN KEY (country_Country)
    REFERENCES country(country_Country)
); 

#majorCityAvg table 
DROP TABLE IF EXISTS majorCityAvg; 
CREATE TABLE majorCityAvg
(mCity_City VARCHAR (50), 
mCity_dt DATE, 
mCity_Country VARCHAR (50), 
mCity_Latitude DECIMAL (10,4), 
mCity_Longitude DECIMAL (10,4), 
PRIMARY KEY (mCity_City, mCity_dt),
CONSTRAINT fk_mCity_mCityAvg
	FOREIGN KEY (mCity_City)
    REFERENCES major_city(mCity_City)
); 

#landAvg table 
DROP TABLE IF EXISTS landAvg; 
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
    REFERENCES land(land_id)
); 


#Insert data into decomposed tables
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////

INSERT INTO country (
country_Country)
SELECT country_Country
FROM country_data; 

INSERT INTO state (
state_State)
SELECT 
state_State
FROM state_data; 



# Stored Procedures
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////


# Stored procedure to compare COUNTRIES
DROP PROCEDURE IF EXISTS compare_countries; 

DELIMITER //

CREATE PROCEDURE compare_countries(
	IN country1 VARCHAR (30),
    IN country2 VARCHAR(30))
BEGIN

SELECT nameof, AVG(temp)
FROM country
	JOIN average ON (country.country = average.nameof)
GROUP BY nameof
HAVING nameof = country1 OR nameof = country2; 

END//

DELIMITER ; 


# Stored procedure to compare STATES
DROP PROCEDURE IF EXISTS compare_countries; 

DELIMITER //

CREATE PROCEDURE compare_states(
	IN state1 VARCHAR (15),
    IN statey2 VARCHAR(15))
BEGIN

SELECT nameof, AVG(temp)
FROM state
	JOIN average ON (state.state = average.nameof)
GROUP BY nameof
HAVING nameof = state1 OR nameof = state2; 

END//

DELIMITER ; 


 # Stored procedure to compare MAJOR CITIES
DROP PROCEDURE IF EXISTS compare_countries; 

DELIMITER //

CREATE PROCEDURE compare_states(
	IN majory1 VARCHAR (15),
    IN major2 VARCHAR(15))
BEGIN

SELECT nameof, AVG(temp)
FROM major_city
	JOIN average ON (major_city.mCity_City = average.nameof)
GROUP BY nameof
HAVING nameof = major1 OR nameof = major2; 

END//

DELIMITER ; 



 # Stored procedure to compare  CITIES
DROP PROCEDURE IF EXISTS compare_countries; 

DELIMITER //

CREATE PROCEDURE compare_states(
	IN city1 VARCHAR (15),
    IN city2 VARCHAR(15))
BEGIN

SELECT nameof, AVG(temp)
FROM major_city
	JOIN average ON (city.city_City = average.nameof)
GROUP BY nameof
HAVING nameof = city1 OR nameof = city2; 

END//

DELIMITER ; 






