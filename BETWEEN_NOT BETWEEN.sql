--BETWEEN and NOT BETWEEN

--All actors where birth date between 1991 and 1995
SELECT * FROM actors 
WHERE date_of_birth BETWEEN '1991-01-01' AND '1995-12-31'
ORDER BY date_of_birth

--All movies released between 1998 and 2002
SELECT * FROM movies
WHERE release_date BETWEEN '1998-01-01' AND '2002-12-31'
ORDER BY release_date

--All movies domestic revenues between 100 and 300
SELECT * FROM movies_revenues
WHERE revenues_domestic BETWEEN 100 AND 300
ORDER BY revenues_domestic

--All movies where movie length is not between 100 and 200
SELECT * FROM movies
WHERE movie_length NOT BETWEEN 100 AND 200
ORDER BY movie_length