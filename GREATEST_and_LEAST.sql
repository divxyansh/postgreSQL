--- GREATEST and LEAST

SELECT GREATEST(10,20,30)

SELECT LEAST(24,67,43)

--Find the greatest and least revenue per each movie
SELECT movie_id,revenues_domestic,revenues_international,
GREATEST(revenues_domestic,revenues_international) AS "Greatest",
LEAST(revenues_domestic,revenues_international) AS "Least"
FROM movies_revenues