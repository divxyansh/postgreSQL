						--DOMAIN EXAMPLE 01--

CREATE DOMAIN positive_numeric int NOT NULL CHECK (VALUE>0)

CREATE TABLE sample(
	sample_id SERIAL PRIMARY KEY,
	value_num positive_numeric
)

INSERT INTO sample (
	value_num
)
VALUES (-10)