# Michaela Kirvan, Ben Lambert
# Project 2, Part 2
# michaela.e.kirvan@vanderbilt.edu, leo.b.lambert@vanderbilt.edu

#This creates the database "temp_db"
DROP DATABASE IF EXISTS temp_db;
CREATE DATABASE temp_db; 

-- TABLE with real datatypes
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

#file 1
LOAD DATA INFILE '/Applications/MAMP/tmp/archive/GlobalTemperatures.csv' INTO TABLE temp_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(dt,LandAverageTemperature, LandAverageTemperatureUncertainty, LandMaxTemperature, 
    LandMaxTemperatureUncertainty, LandMinTemperature, LandMinTemperatureUncertainty, 
    LandAndOceanAverageTemperature, LandAndOceanAverageTemperatureUncertainty); 
    




#file2
LOAD DATA INFILE '/Applications/MAMP/tmp/archive/GlobalLandTemperaturesByCity.csv' INTO TABLE temp_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
	(city_dt,city_AverageTemperature, city_AverageTemperatureUncertainty, 
	city_City,city_Country, city_Latitude, city_Longitude); 




#file3
LOAD DATA INFILE '/Applications/MAMP/tmp/archive/GlobalLandTemperaturesByCountry.csv' INTO TABLE temp_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(country_dt, country_AverageTemperature, country_AverageTemperatureUncertainty, country_Country); 


#file4
LOAD DATA INFILE '/Applications/MAMP/tmp/archive/GlobalLandTemperaturesByMajorCity.csv' INTO TABLE temp_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(mCity_dt,city_AverageTemperature, mCity_AverageTemperatureUncertainty, 
	mCity_City,mCity_Country, mCity_Latitude, mCity_Longitude); 


#file5
LOAD DATA INFILE '/Applications/MAMP/tmp/archive/GlobalLandTemperaturesByState.csv' INTO TABLE temp_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(state_dt, state_AverageTemperature, state_AverageTemperatureUncertainty, state_State, state_Country); 








 






