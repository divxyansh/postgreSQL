-- Domain Exmaple 02

CREATE DOMAIN us_postal_code AS TEXT
CHECK(
	VALUE ~ '^\d{5}$'
	OR VALUE ~ '^\d{5}-\d{4}$'
)

CREATE TABLE addresses(
	address_id SERIAL PRIMARY KEY,
	postal_code us_postal_code
)

INSERT INTO addresses(postal_code) VALUES('10000')

SELECT * FROM addresses