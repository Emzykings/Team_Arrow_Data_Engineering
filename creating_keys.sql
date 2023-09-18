-- Defining the primary keys for the dimension tables in the first section
ALTER TABLE TIME_DIMENSION
ADD PRIMARY KEY (TIME_KEY);

ALTER TABLE CROP_DIMENSION
ADD PRIMARY KEY (TIME_KEY);

ALTER TABLE PEST_DIMENSION
ADD PRIMARY KEY (TIME_KEY);

ALTER TABLE WEATHER_DIMENSION
ADD PRIMARY KEY (TIME_KEY);

ALTER TABLE SOIL_DIMENSION
ADD PRIMARY KEY (TIME_KEY);

-- DefinING foreign key relationship between Agricultural_Performance_Fact and TimeDimension
ALTER TABLE AGRICULTURAL_PERFORMANCE_FACT
ADD CONSTRAINT fk_time_key_time_dimension
FOREIGN KEY (TIME_KEY)
REFERENCES TIME_DIMENSION (TIME_KEY);

ALTER TABLE AGRICULTURAL_PERFORMANCE_FACT
ADD CONSTRAINT fk_time_key_crop_dimension
FOREIGN KEY (TIME_KEY)
REFERENCES CROP_DIMENSION (TIME_KEY);

ALTER TABLE AGRICULTURAL_PERFORMANCE_FACT
ADD CONSTRAINT fk_time_key_pest_dimension
FOREIGN KEY (TIME_KEY)
REFERENCES PEST_DIMENSION (TIME_KEY);

ALTER TABLE AGRICULTURAL_PERFORMANCE_FACT
ADD CONSTRAINT fk_time_key_soil_dimension
FOREIGN KEY (TIME_KEY)
REFERENCES SOIL_DIMENSION (TIME_KEY);

ALTER TABLE AGRICULTURAL_PERFORMANCE_FACT
ADD CONSTRAINT fk_time_key_weather_dimension
FOREIGN KEY (TIME_KEY)
REFERENCES WEATHER_DIMENSION (TIME_KEY);

