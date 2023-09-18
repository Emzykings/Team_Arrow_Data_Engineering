-- -- Change the data type of a column
-- UPDATE sensor_staging_table
-- SET TIMESTAMP = NULL 
-- WHERE TIMESTAMP = 'INVALID';

-- ALTER TABLE sensor_staging_table
-- MODIFY COLUMN TIMESTAMP TIMESTAMP_NTZ(9);

SELECT * FROM sensor_staging_table WHERE TRY_CAST(TIMESTAMP AS TIMESTAMP_NTZ(9)) IS NULL;

