--Table Data Conversion

CREATE TABLE ratings(
	rating_id SERIAL PRIMARY KEY,
	rating VARCHAR(1) NOT NULL
)

SELECT * FROM ratings

--Lets insert some data
INSERT INTO ratings(rating) VALUES
('A'),
('B'),
('C'),
('D')

--Now we have to convert all values in rating column into integers
--We will use CAST to change all non-numeric data to integers

SELECT rating_id,
CASE WHEN rating~E'^\\d+$' THEN
CAST(rating AS INTEGER)
ELSE 0
END AS rating
FROM ratings