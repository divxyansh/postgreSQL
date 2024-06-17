-- Modify Table, Add/Modify columns

--Rename Table
ALTER TABLE persons
RENAME TO users

ALTER TABLE users
RENAME TO persons

--Rename Column
ALTER TABLE persons
RENAME COLUMN age TO person_age

--Drop column
ALTER TABLE persons
DROP COLUMN person_age

ALTER TABLE persons
ADD COLUMN age VARCHAR(10)

--Change Data type of column
ALTER TABLE persons
ALTER COLUMN age TYPE int
USING age::INTEGER

SELECT * FROM persons


--Set default values of column
ALTER TABLE persons
ADD COLUMN is_enable VARCHAR(1)

ALTER TABLE persons
ALTER COLUMN is_enable SET DEFAULT 'Y'

INSERT INTO persons(
	first_name,
	last_name,
	nationality,
	age
)
VALUES(
	'JOHN',
	'BENJAMIN',
	'US',
	40
)
