---Type Example 01

CREATE TYPE inventory_item AS(
	product_name VARCHAR(200),
	supplier_id INT,
	price NUMERIC
)

CREATE TABLE inventory(
	inventory_id SERIAL PRIMARY KEY,
	item inventory_item
)

INSERT INTO inventory(item) VALUES (ROW('pen',10,4.99))
INSERT INTO inventory(item) VALUES (ROW('paper',20,10.99))

SELECT * FROM inventory

SELECT (item).product_name FROM inventory WHERE (item).price>3.99