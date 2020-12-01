USE temp_db;

DROP PROCEDURE IF EXISTS selectTemp;

DELIMITER //

CREATE PROCEDURE selectTemp(IN dateOf VARCHAR(50))
BEGIN

  SELECT LandAverageTemperature
  FROM temp_data
  WHERE dt = dateOf;

END//

DELIMITER ;