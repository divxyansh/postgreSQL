--- POSITION 

SELECT POSITION('Amazing' IN 'Amazing PostgreSQL')  --returns 1

SELECT POSITION('is' IN 'This is a computer')  --returns 3

SELECT POSITION('C' IN 'Klicknalytics.com')  --returns 0 because POSITION is case-sensitive