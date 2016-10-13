\c test;

CREATE USER indexed_cars_user;

DROP DATABASE IF EXISTS indexed_cars;

CREATE DATABASE indexed_cars OWNER indexed_cars_user;

\c indexed_cars;

\i scripts/car_models.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;

\timing on;

SELECT DISTINCT ON (make_title) make_title FROM car_models
WHERE make_code = 'LAM';

SELECT DISTINCT ON (model_title) model_title FROM car_models
WHERE make_code = 'NISSAN' AND model_code = 'GT-R';

SELECT make_code, model_code, model_title, year FROM car_models
WHERE make_code = 'LAM';

SELECT * FROM car_models
WHERE year BETWEEN 2010 AND 2015;

SELECT * FROM car_models
WHERE year = 2010;

CREATE INDEX mk_Code
ON car_models(make_code);

CREATE INDEX mdl_Code
ON car_models(model_code);

CREATE INDEX yr_Idx
ON car_models(year);

SELECT DISTINCT ON (make_title) make_title FROM car_models
WHERE make_code = 'LAM';

SELECT DISTINCT ON (model_title) model_title FROM car_models
WHERE make_code = 'NISSAN' AND model_code = 'GT-R';

SELECT make_code, model_code, model_title, year FROM car_models
WHERE make_code = 'LAM';

SELECT * FROM car_models
WHERE year BETWEEN 2010 AND 2015;

SELECT * FROM car_models
WHERE year = 2010;