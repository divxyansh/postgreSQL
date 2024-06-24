----			SEQUENCES    -----


CREATE SEQUENCE IF NOT EXISTS test_seq

SELECT nextval('test_seq')   --increment value by 1 with every run

SELECT currval('test_seq') -- most current value of sequence

SELECT setval('test_seq',100)  --set currenct value of sequence

SELECT setval('test_seq',200,false)   --set value of sequence and do not skip over


--Control sequence start value 
CREATE SEQUENCE IF NOT EXISTS test_seq2 START WITH 100
SELECT nextval('test_seq2')
SELECT currval('test_seq2')

--Alter a sequence
ALTER SEQUENCE test_seq RESTART WITH 100    --restart with any value
	
ALTER SEQUENCE test_seq RENAME TO my_sequence4    --rename any sequence



--MULTIPLE SEQUENCE PARAMETERS TO CREATE A SEQUENCE
CREATE SEQUENCE IF NOT EXISTS test_seq3
INCREMENT 50
MINVALUE 400
MAXVALUE 6000
START WITH 500

SELECT nextval('test_seq3')


--SPECIFY THE DATA TYPE OF SEQUENCE
CREATE SEQUENCE IF NOT EXISTS test_seq_smallint AS SMALLINT
CREATE SEQUENCE IF NOT EXISTS test_seq_int AS INT
CREATE SEQUENCE IF NOT EXISTS test_seq4     --takes bigint as default


--CREATE A DESCENDING SEQ and CYCLE | NO CYCLE
	--CYCLE in ascending sequence when reaches MAXVALUE, resets to MINVALUE
	--CYCLE in descending sequence when reaches MINVALUE, resets to MAXVALUE
CREATE SEQUENCE seq_Des
INCREMENT -1
MINVALUE 1
MAXVALUE 3
START 3
CYCLE
	
CREATE SEQUENCE seq_asc
SELECT nextval('seq_Asc')

--Drop a sequence
DROP SEQUENCE test_seq3


--Attach sequence to table
CREATE TABLE users(
	user_id SERIAL PRIMARY KEY,
	user_name VARCHAR(50)
)

INSERT INTO users(user_name) VALUES('ADNAN')
INSERT INTO users(user_name) VALUES('ADNAN2')

SELECT * FROM users

ALTER SEQUENCE users_user_id_seq RESTART WITH 100
INSERT INTO users(user_name) VALUES('ADNAN4')



--Share sequence among tables
CREATE SEQUENCE common_fruits_seq START WITH 100

CREATE TABLE apples(
	fruit_id INT DEFAULT nextval('common_fruits_seq') NOT NULL,
	fruit_name VARCHAR (50)
)

CREATE TABLE  mangoes(
	fruit_id INT DEFAULT nextval('common_fruits_seq') NOT NULL,
	fruit_name VARCHAR (50)
)

INSERT INTO apples(fruit_name) VALUES('big_apple')
INSERT INTO mangoes(fruit_name) VALUES('big_mango')

SELECT * FROM apples
SELECT * FROM mangoes








