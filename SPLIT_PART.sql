--- SPLIT_PART function

-- this function splits a stirng on a specified delimeter nd returns nth substring
--SPLIT_PART (string,delimeter,position)


SELECT SPLIT_PART('1,2,3',',',2)    --returns 2

SELECT SPLIT_PART('ONE,TWO,THREE',',',2)    --returns TWO

SELECT SPLIT_PART('A|B|C|D','|',2)

SELECT movie_name,release_date,SPLIT_PART(release_date::text,'-',1) AS release_year
FROM movies