-- DOMAIN EXAMPLE 03

CREATE DOMAIN proper_email VARCHAR (150)
CHECK(VALUE ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$')

CREATE TABLE clients_names(
	client_id SERIAL PRIMARY KEY,
	email proper_email
)

INSERT INTO clients_names (email) VALUES ('a@b.com')
	
SELECT * FROM clients_names
