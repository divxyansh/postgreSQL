----TYPES

CREATE TYPE address AS(
	city VARCHAR(50),
	country VARCHAR(20)
)

CREATE TABLE comapnies(
	comp_id SERIAL PRIMARY KEY,
	address address
)

INSERT INTO comapnies(address) VALUES(ROW('LONDON','UK'))

INSERT INTO comapnies(address) VALUES(ROW('NEW YORK','US'))

SELECT * FROM comapnies

SELECT (address).country FROM comapnies;