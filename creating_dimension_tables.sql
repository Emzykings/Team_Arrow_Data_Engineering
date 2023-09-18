-- TimeDimension (Time Dimension Table)
CREATE OR REPLACE TABLE Time_Dimension AS
WITH
    weather_timestamps AS (
        SELECT DISTINCT timestamp FROM WEATHER_STAGING_TABLE
    ),
    soil_timestamps AS (
        SELECT DISTINCT timestamp FROM soil_staging_table
    ),
    sensor_timestamps AS (
        SELECT DISTINCT timestamp FROM sensor_staging_table
    ),
    pest_timestamps AS (
        SELECT DISTINCT timestamp FROM pest_staging_table
    ),
    crop_timestamps AS (
        SELECT DISTINCT timestamp FROM crop_staging_table
    )
SELECT DISTINCT
    timestamp AS time_key,
    SUBSTRING(timestamp, 6, 2) AS month
FROM (
    SELECT * FROM weather_timestamps
    UNION
    SELECT * FROM soil_timestamps
    UNION
    SELECT * FROM sensor_timestamps
    UNION
    SELECT * FROM pest_timestamps
    UNION
    SELECT * FROM crop_timestamps
) AS all_timestamps;

CREATE OR REPLACE TABLE Weather_Dimension AS
SELECT
    timestamp AS time_key,
    weather_condition,
    precipitation,
    wind_speed
FROM WEATHER_STAGING_TABLE;

CREATE OR REPLACE TABLE Soil_Dimension AS
SELECT
    timestamp AS time_key,
    soil_comp,
    soil_moisture,
    soil_ph,
    nitrogen_level,
    phosphorus_level,
    organic_matter
FROM SOIL_STAGING_TABLE;

CREATE OR REPLACE TABLE Sensor_Dimension AS
SELECT
    sensor_id,
    timestamp AS time_key,
    temperature,
    humidity,
    soil_moisture,
    light_intensity,
    battery_level
FROM SENSOR_STAGING_TABLE;

CREATE OR REPLACE TABLE Pest_Dimension AS
SELECT
    timestamp AS time_key,
    pest_type,
    pest_description,
    pest_severity
FROM PEST_STAGING_TABLE;

CREATE OR REPLACE TABLE Crop_Dimension AS
SELECT
    timestamp AS time_key,
    crop_type,
    crop_yield,
    growth_stage,
    pest_issue
FROM CROP_STAGING_TABLE;



