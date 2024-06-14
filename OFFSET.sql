-- OFFSET

--List 5 films starting from fourth one ordered by movie_id
SELECT * FROM movies
ORDER BY movie_id
LIMIT 5 OFFSET 4 

--List top 5 movies after 5 highest domestic profit movies
SELECT * FROM movies_revenues
ORDER BY revenues_domestic DESC NULLS LAST
LIMIT 5 OFFSET 5


