-- Create the SENSOR Data Dimension Table
CREATE OR REPLACE TABLE DFA23RAWDATA.ARROW.SENSOR_DATA_DICTIONARY (
   ATTRIBUTE_NAME STRING,
   DATA_TYPE STRING,
   DESCRIPTION STRING
);

-- Insert rows into the SENSOR Data Dimension Table
INSERT INTO DFA23RAWDATA.ARROW.SENSOR_DATA_DICTIONARY
VALUES
   ('SENSOR_ID', 'STRING', 'Unique identifier for the sensor'),
   ('TEMPERATURE', 'FLOAT', 'Temperature reading from the sensor (in °C)'),
   ('HUMIDITY', 'FLOAT', 'Humidity reading from the sensor (in %)'),
   ('SOIL_MOISTURE', 'FLOAT', 'Soil moisture reading from the sensor (in %)'),
   ('LIGHT_INTENSITY', 'FLOAT', 'Light intensity reading from the sensor'),
   ('BATTERY_LEVEL', 'FLOAT', 'Battery level of the sensor (in %)');

-- Example Data Dictionary for SOIL Data Dimension Table
CREATE OR REPLACE TABLE  DFA23RAWDATA.ARROW.SOIL_DATA_DICTIONARY (
  ATTRIBUTE_NAME STRING,
   DATA_TYPE STRING,
   DESCRIPTION STRING
);

INSERT INTO  DFA23RAWDATA.ARROW.SOIL_DATA_DICTIONARY
VALUES
   ('SOIL_COMP', 'FLOAT', 'Soil composition measurement'),
   ('SOIL_MOISTURE', 'FLOAT', 'Soil moisture content (in %)'),
   ('SOIL_PH', 'FLOAT', 'Soil pH level'),
   ('NITROGEN_LEVEL', 'FLOAT', 'Nitrogen level in the soil (in ppm)'),
   ('PHOSPHORUS_LEVEL', 'FLOAT', 'Phosphorus level in the soil (in ppm)'),
   ('ORGANIC_MATTER', 'FLOAT', 'Organic matter content in the soil (in %)');

-- Example Data Dictionary for WEATHER Data Dimension Table
CREATE OR REPLACE TABLE  DFA23RAWDATA.ARROW.WEATHER_DATA_DICTIONARY (
   ATTRIBUTE_NAME STRING,
   DATA_TYPE STRING,
   DESCRIPTION STRING
);

INSERT INTO  DFA23RAWDATA.ARROW.WEATHER_DATA_DICTIONARY
VALUES
   ('WEATHER_CONDITION', 'STRING', 'Current weather condition description'),
   ('WIND_SPEED', 'FLOAT', 'Wind speed (in km/h)'),
   ('PRECIPITATION', 'FLOAT', 'Precipitation amount (in mm)');


-- Example Data Dictionary for CROP Data Dimension Table
CREATE OR REPLACE TABLE  DFA23RAWDATA.ARROW.CROP_DATA_DICTIONARY (
   ATTRIBUTE_NAME STRING,
   DATA_TYPE STRING,
   DESCRIPTION STRING
);

INSERT INTO  DFA23RAWDATA.ARROW.CROP_DATA_DICTIONARY
VALUES
   ('CROP_TYPE', 'STRING', 'Type of crop'),
   ('CROP_YIELD', 'FLOAT', 'Crop yield in bushels'),
   ('GROWTH_STAGE', 'STRING', 'Growth stage of crops');

-- Example Data Dictionary for PEST Data Dimension Table
CREATE OR REPLACE TABLE  DFA23RAWDATA.ARROW.PEST_DATA_DICTIONARY (
   ATTRIBUTE_NAME STRING,
   DATA_TYPE STRING,
   DESCRIPTION STRING
);

INSERT INTO  DFA23RAWDATA.ARROW.PEST_DATA_DICTIONARY
VALUES
   ('PEST_TYPE', 'STRING', 'Type of pest'),
   ('PEST_DESCRIPTION', 'STRING', 'Description of pest issue'),
   ('PEST_SEVERITY', 'STRING', 'Severity of pest issue');
