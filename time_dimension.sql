-- TimeDimension (Time Dimension Table)
CREATE TABLE TimeDimension AS
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
