--IN and NOT IN


--All movies with English, Chinese and Japanese
SELECT * FROM movies
WHERE movie_lang IN('English','Chinese','Japanese')
ORDER BY movie_lang

--All movies with age certificate=12 and PG type
SELECT * FROM movies
WHERE age_certificate IN ('12','PG')
ORDER BY age_certificate

--All movies where director id is not 13 or 10
SELECT * FROM movies
WHERE director_id NOT IN ('13','10')
order by director_id

--All movies where actor_id s not 1,2,3,4
SELECT * FROM actors
WHERE actor_id NOT IN (1,2,3,4)
ORDER BY actor_id