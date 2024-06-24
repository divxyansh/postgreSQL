---- ALPHANUMERIC SEQUENCES

CREATE TABLE contacts(
	contact_id SERIAL PRIMARY KEY,
	contact_name VARCHAR(150)
)

INSERT INTO contacts (contact_name) VALUES('ADNAN')
INSERT INTO contacts (contact_name) VALUES('ADNAN2')

SELECT * FROM contacts

--Drop Table
DROP TABLE contacts

--Create sequence 
CREATE SEQUENCE table_Seq

CREATE TABLE contacts(
	contact_id TEXT NOT NULL DEFAULT ('ID' || nextval('table_seq')),
	ontact_name VARCHAR(150)
)

ALTER SEQUENCE table_seq OWNED BY contacts.contact_id 

INSERT INTO contacts (contact_name) VALUES('ADNAN')

SELECT * FROM contacts