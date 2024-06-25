-- STRPOS
--func is used to find position, from where substring is being matched with stirng

SELECT strpos('World Bank','Bank')

SELECT
	first_name, last_name
FROM directors
WHERE strpos(last_name,'on')>0