	-- DOMAIN
CREATE DOMAIN addr VARCHAR(100) NOT NULL

CREATE TABLE locations(
	address addr
	
)

INSERT INTO locations (address) VALUES ('123 London')

SELECT * FROM locations