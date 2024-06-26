--- MIN and MAX function

--What is longest length movie in movies table
SELECT movie_length FROM movies ORDER BY movie_length DESC

SELECT MAX(movie_length) FROM movies 

--What is shortest length movie in movies table
SELECT MIN(movie_length) FROM movies

--What is longest english movie
SELECT MAX(movie_length) FROM movies WHERE movie_lang='English'

--WHat is latest release movie in English
SELECT MAX(release_date) FROM movies WHERE movie_lang='English'

--What is the first movie release in Chinese language
SELECT MIN(release_date) FROM movies WHERE movie_lang='Chinese'

--MAX and MIN on VARCHAR
SELECT MAX(movie_name) FROM movies
	
SELECT MIN(movie_name) FROM movies