-- SUBSTRING
--func allows you to extract a substirng from stirng

SELECT SUBSTRING('What a wondeful world' from 1 for 4)  --retunrs What

SELECT SUBSTRING('What a wonderful world' from 8 for 10)   --returns wonderful

SELECT SUBSTRING('What a wonderful world' for 7)   --returns What a

SELECT 
	first_name,last_name,
	SUBSTRING(first_name,1,1) AS initial
FROM directors
ORDER BY last_name