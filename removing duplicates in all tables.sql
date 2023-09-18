-- -- Removing duplicates from staging tables

CREATE OR REPLACE TABLE refined_staging_table AS SELECT DISTINCT * FROM soil_staging_table;
ALTER TABLE soil_staging_table RENAME TO soil_not_refined;
ALTER TABLE refined_staging_table RENAME TO soil_staging_table;

CREATE OR REPLACE TABLE refined_staging_table AS SELECT DISTINCT * FROM weather_staging_table;
ALTER TABLE weather_staging_table RENAME TO weather_not_refined;
ALTER TABLE refined_staging_table RENAME TO weather_staging_table;

CREATE OR REPLACE TABLE refined_staging_table AS SELECT DISTINCT * FROM crop_staging_table;
ALTER TABLE crop_staging_table RENAME TO crop_not_refined;
ALTER TABLE refined_staging_table RENAME TO crop_staging_table;

CREATE OR REPLACE TABLE refined_staging_table AS SELECT DISTINCT * FROM pest_staging_table;
ALTER TABLE pest_staging_table RENAME TO pest_not_refined;
ALTER TABLE refined_staging_table RENAME TO pest_staging_table;

CREATE OR REPLACE TABLE refined_staging_table AS SELECT DISTINCT * FROM location_staging_table;
ALTER TABLE location_staging_table RENAME TO location_not_refined;
ALTER TABLE refined_staging_table RENAME TO location_staging_table;

CREATE OR REPLACE TABLE refined_staging_table AS SELECT DISTINCT * FROM sensor_staging_table;
ALTER TABLE sensor_staging_table RENAME TO sensor_not_refined;
ALTER TABLE refined_staging_table RENAME TO sensor_staging_table;

