-- Logical Operator

-- All movie length greater than 100
SELECT * FROM movies
WHERE movie_length>100
ORDER BY movie_length

--All movie length greater than or equal to 100
SELECT * FROM movies
WHERE movie_length>=100
ORDER BY movie_length

--All movie length less than 100
SELECT * FROM movies
WHERE movie_length<100
ORDER BY movie_length

--All movies where release date is greater than 100
SELECT * FROM movies
ORDER BY release_date ASC

SELECT * FROM movies
WHERE release_date >'1999-12-31'

--ALl movies greater than English language
SELECT * FROM movies
WHERE movie_lang>'English'
ORDER BY movie_lang

--ALl movies which are not in English language
SELECT * FROM movies
WHERE movie_lang<>'English'
ORDER BY movie_lang