---NOT NULL constraint

CREATE TABLE table_nn(
	id SERIAL PRIMARY KEY,
	tag TEXT NOT NULL
)

SELECT * FROM table_nn

INSERT INTO table_nn(tag) VALUES('ADAM')   --Correct

INSERT INTO table_nn(tag) VALUES(NULL)     --Incorrect