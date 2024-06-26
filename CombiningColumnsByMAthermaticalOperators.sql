-- Combining columns using mathematical operators

--Get total revenues from movies_revenues table
SELECT * FROM movies_revenues

SELECT movie_id, 
	revenues_domestic,
	revenues_international,
	(revenues_domestic + revenues_international) AS "Total revenues"
	FROM movies_revenues
WHERE (revenues_domestic + revenues_international) IS NOT NULL
ORDER BY 4 DESC
NULLS LAST