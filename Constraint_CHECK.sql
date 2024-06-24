---- CHECK CONSTRAINT

CREATE TABLE staff(
	staff_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	birth_date DATE CHECK(birth_date>'1900-01-01'),
	joined_date DATE CHECK(joined_date>birth_date),
	salary NUMERIC CHECK(salary>0)
)

SELECT * FROm staff

INSERT INTO staff(first_name,last_name,birth_date,joined_date,salary)
VALUES ('ADAM','KING','1999-01-01','2002-01-01',100)

INSERT INTO staff(first_name,last_name,birth_date,joined_date,salary)
VALUES ('JOHN','ADAMS','2020-01-01','2020-01-01',100)

--Define CHECK on exisitng table
CREATE TABLE prices(
	price_id SERIAL PRIMARY KEY,
	product_id INT NOT NULL,
	price NUMERIC NOT NULL,
	discount NUMERIC NOT NULL,
	valid_from DATE NOT NULL
)

ALTER TABLE prices
ADD CONSTRAINT price_check
CHECK(
	price > 0 AND discount>=0 AND price > discount
)

--Rename Constraint
ALTER TABLE prices
RENAME CONSTRAINT price_check TO price_discount_check