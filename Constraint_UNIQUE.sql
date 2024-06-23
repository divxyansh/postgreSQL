----UNIQUE CONSTRAINT

CREATE TABLE table_emails(
	id SERIAL PRIMARY KEY,
	emails TEXT UNIQUE
)

SELECT * FROM table_emails

INSERT INTO table_emails (emails) VALUES ('A@B.com')

--Multiple Columns
CREATE TABLE table_products(
	id SERIAL PRIMARY KEY,
	product_code VARCHAR(10),
	product_name text
)

SELECT * FROM table_products

ALTER TABLE table_products ADD CONSTRAINT unique_prodcut_code UNIQUE (product_code,product_name)

INSERT INTO table_products(product_code, product_name) VALUES ('A','apple')
INSERT INTO table_products(product_code, product_name) VALUES ('B','apple')
INSERT INTO table_products(product_code, product_name) VALUES ('C','banana')