--TYpe Example 02

CREATE TYPE currency AS ENUM ('USD','EUR','GBP')

SELECT 'USD'::currency

ALTER TYPE currency ADD VALUE 'CHF' AFTER 'EUR'

CREATE TABLE stocks(
	stock_id SERIAL PRIMARY KEY,
	stock_currency currency
)

INSERT INTO stocks (stock_currency) VALUES ('CHF')

SELECT * FROM stocks