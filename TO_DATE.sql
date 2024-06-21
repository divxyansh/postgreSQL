--TO_DATE()

--string to date
SELECT TO_DATE(
	'2020/10/22',
	'YYYY/MM/DD'
)
SELECT TO_DATE (
	'022199',
	'MMDDYY'
)
SELECT TO_DATE(
	'March 07, 2019',
	'Month DD, YYYY'
)


--Error Handling
SELECT TO_DATE(
	'2020/02/25',
	'YYYY/MM/DD'
)