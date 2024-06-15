--NULL and IS NOT NULL

--Find list of actors with missing birth dates
SELECT * FROM actors
WHERE date_of_birth IS NULL
ORDER BY date_of_birth

--Find actors with missing birth date or missing first name
SELECT * FROM actors
WHERE date_of_birth IS NULL 
OR first_name IS NULL
ORDER BY first_name

--List of movies domestic revenue is NULL
SELECT * FROM movies_revenues
WHERE revenues_domestic IS NULL
ORDER BY revenues_domestic

--List of movies where either domestic or international revenues is null
SELECT * FROM movies_revenues
WHERE revenues_domestic IS NULL 
OR revenues_international IS NULL

--Movies where domestic revenues are not NULL
SELECT * FROM movies_revenues
WHERE movies_revenues IS NOT NULL