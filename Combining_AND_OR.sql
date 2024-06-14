-- Combining AND, OR operator

--Get all English OR chinese movies AND movies with ageCertificate=12
SELECT * FROM movies
WHERE
	(movie_lang='English' 
	OR movie_lang='Chinese')
	AND age_certificate='12'
ORDER BY movie_lang