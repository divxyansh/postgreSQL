--CAST for data conversion

CAST (expression AS target_data_type)

--String to Integer
SELECT CAST ('10' AS INTEGER)

SELECT CAST ('10n' AS INTEGER)

--String to Date
SELECT CAST('2020-01-01' AS DATE),
CAST ('01-MAY-2020' AS DATE)

--String to Boolean
SELECT CAST('true' AS BOOLEAN),
CAST('false' AS BOOLEAN),
CAST('T' AS BOOLEAN),
CAST('F' AS BOOLEAN)
SELECT CAST('0' AS BOOLEAN),
CAST('1' AS BOOLEAN)

--String to Double
SELECT CAST('14.788' AS DOUBLE PRECISION)

--Another option for direct conversion
expression::type

SELECT 
'10'::INTEGER,
'2020-01-01'::DATE,
'01-01-2020'::DATE

--String to timestamp
SELECT '2020-02-20 10:30:25.467'::TIMESTAMP

SELECT '2020-02-20 10:30:25.467'::TIMESTAMPTZ 

--String to Interval
SELECT
'10 minute'::interval,
'4 hour'::interval,
'1 day'::interval,
'2 week'::interval,
'5 month'::interval
