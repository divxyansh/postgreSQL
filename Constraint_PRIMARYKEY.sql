----			 CONSTRAINT PRIMARY KEY

CREATE TABLE table_items(
	item_id INT PRIMARY KEY,
	item_name VARCHAR(100) NOT NULL
)

SELECT * FROM table_items

INSERT INTO table_items (item_id,item_name) VALUES (1,'PEN')
INSERT INTO table_items (item_id,item_name) VALUES (2,'PEN')


--How to add primary key to existing table

--Drop a constraint
ALTER TABLE table_items DROP CONSTRAINT table_items_pkey

--Alter table and add primary key
ALTER TABLE table_items ADD PRIMARY KEY (item_id)


--				Primary key on multiple columns
CREATE TABLE t_grades(
	course_id varchar(100) NOT NULL,
	student_id VARCHAR(100) NOT NULL,
	grade int NOT NULL
)

SELECT * FROM t_grades

INSERT INTO t_grades(course_id,student_id,grade) VALUES
('MATH','S2',70),
('CHEMISTRY','S1',70),
('ENGLISH','S2',70),
('PHYSICS','S1',80)

DROP TABLE t_grades

CREATE TABLE t_grades(
	course_id varchar(100) NOT NULL,
	student_id VARCHAR(100) NOT NULL,
	grade int NOT NULL,
	PRIMARY KEY(course_id,student_id)  --COMPOSITE KEY
)

--Drop a primary key
ALTER TABLE t_grades DROP CONSTRAINT t_grades_pkey

--Add
ALTER TABLE t_grades ADD CONSTRAINT t_grades_course_id_student_id_pkey PRIMARY KEY (course_id,student_id)