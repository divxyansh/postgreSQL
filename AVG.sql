--- AVG function

--1. Get average movie_length for all movies
SELECT AVG(movie_length) FROM movies

--2. Get average movie length of all english movies
SELECT AVG(movie_length) FROM movies WHERE movie_lang='English'

--with DISTINCT
SELECT AVG(DISTINCT movie_length) FROM movies WHERE movie_lang='English'

--3. SUM and AVG func together
SELECT AVG (movie_length), SUM (movie_length) FROM movies WHERE movie_lang='English'