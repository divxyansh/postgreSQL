-- AND operator

-- Single Condition
SELECT * FROM movies
WHERE 
movie_lang='English'

SELECT * FROM movies
WHERE
movie_lang='Japanese'

-- MUltiple Condition

SELECT * FROM movies
WHERE
movie_lang='English'
AND age_certificate='18'