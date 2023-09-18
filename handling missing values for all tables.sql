-- Fill missing values in all columns with default values for crop_staging_table
UPDATE DFA23RAWDATA.ARROW.crop_staging_table
SET
  CROP_TYPE = COALESCE(CROP_TYPE, ''),  
  CROP_YIELD = COALESCE(CROP_YIELD, 0),  
  GROWTH_STAGE = COALESCE(GROWTH_STAGE, ''),
  PEST_ISSUE = COALESCE(PEST_ISSUE, '') 
  
WHERE
  CROP_TYPE IS NULL OR
  CROP_YIELD IS NULL OR
  GROWTH_STAGE IS NULL OR
  PEST_ISSUE IS NULL;

-- Fill missing values in all columns with default values for weather_staging_table
UPDATE DFA23RAWDATA.ARROW.weather_staging_table
SET
  WEATHER_CONDITION = COALESCE(WEATHER_CONDITION, ''),   
  WIND_SPEED = COALESCE(WIND_SPEED, 0),
  PRECIPITATION = COALESCE(PRECIPITATION, 0) 
  
WHERE
  WEATHER_CONDITION IS NULL OR
  WIND_SPEED IS NULL OR
  PRECIPITATION IS NULL;

  -- Fill missing values in all columns with default values for soil_staging_table
UPDATE DFA23RAWDATA.ARROW.soil_staging_table
SET
  SOIL_COMP = COALESCE(SOIL_COMP, 0),   
  SOIL_MOISTURE = COALESCE(SOIL_MOISTURE, 0),
  NITROGEN_LEVEL = COALESCE(NITROGEN_LEVEL, 0),
  PHOSPHORUS_LEVEL = COALESCE(PHOSPHORUS_LEVEL, 0),
  ORGANIC_MATTER = COALESCE(ORGANIC_MATTER, 0),
  SOIL_PH = COALESCE(SOIL_PH, 0) 
  
WHERE
  SOIL_COMP IS NULL OR
  SOIL_MOISTURE IS NULL OR
  NITROGEN_LEVEL IS NULL OR
  PHOSPHORUS_LEVEL IS NULL OR
  ORGANIC_MATTER IS NULL OR
  SOIL_PH IS NULL;



-- Fill missing values in all columns with default values for pest_staging_table
UPDATE DFA23RAWDATA.ARROW.pest_staging_table
SET
  PEST_TYPE = COALESCE(PEST_TYPE, ''),   
  PEST_DESCRIPTION = COALESCE(PEST_DESCRIPTION, ''),
  PEST_SEVERITY = COALESCE(PEST_SEVERITY, '')
  
WHERE
  PEST_TYPE IS NULL OR
  PEST_DESCRIPTION IS NULL OR
  PEST_SEVERITY IS NULL;


UPDATE DFA23RAWDATA.ARROW.crop_staging_table
SET crop_yield = CASE WHEN crop_yield = 'NA' THEN 0 ELSE crop_yield END;

UPDATE DFA23RAWDATA.ARROW.soil_staging_table
SET soil_moisture = CASE WHEN soil_moisture = 'NA' THEN 0 ELSE soil_moisture END;

UPDATE DFA23RAWDATA.ARROW.sensor_staging_table
SET temperature = CASE WHEN temperature = 'NA' THEN 0 ELSE temperature END;

UPDATE DFA23RAWDATA.ARROW.pest_staging_table
SET pest_severity = CASE WHEN pest_severity = 'NA' THEN '' ELSE pest_severity END;

UPDATE DFA23RAWDATA.ARROW.weather_staging_table
SET precipitation = CASE WHEN precipitation = 'NA' THEN 0 ELSE precipitation END;



