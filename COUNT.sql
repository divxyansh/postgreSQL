-- COUNT

--1. Count all records
SELECT COUNT(*) FROM movies

--2. Count all records from specific column
SELECT COUNT(movie_length) FROM movies

--3. Count distinct movie languages
SELECT COUNT(DISTINCT(movie_lang)) FROM movies

--4. Count all distinct movie directors
SELECT COUNT(director_id) FROM movies
SELECT COUNT(DISTINCT(director_id)) FROM movies

--5. Count all english movies
SELECT COUNT(*) FROM movies WHERE movie_lang='English'