CREATE OR REPLACE TABLE Agricultural_Performance_Fact AS
SELECT
    t.time_key AS time_key,
    c.crop_type AS crop_type,
    SUM(c.crop_yield) AS total_crop_yield,
    AVG(s.soil_moisture) AS avg_soil_moisture,
    AVG(se.temperature) AS avg_temperature,
    AVG(w.precipitation) AS average_precipitation,
    p.pest_type AS pest_type
FROM TimeDimension t
JOIN CROP_DIMENSION c ON t.time_key = c.time_key
JOIN SOIL_DIMENSION s ON t.time_key = s.time_key
JOIN SENSOR_DIMENSION se ON t.time_key = se.time_key
JOIN WEATHER_DIMENSION w ON t.time_key = w.time_key
LEFT JOIN (
    SELECT time_key, pest_type
    FROM PEST_DIMENSION
) p ON t.time_key = p.time_key
GROUP BY t.time_key, c.crop_type, p.pest_type;
