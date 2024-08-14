USE Northwind


-- 새해부터 몇일인지
-- SELECT DATEDIFF(DAY, '20240101', GETDATE())

-- SELECT *
-- FROM EMPLOYEES

--SELECT CONCAT(FirstName, ' ', LastName) AS FullName
--FROM Employees
--WHERE MONTH(BirthDate) = MONTH(GETDATE());


--SELECT MONTH(BirthDate) AS BirthMonth,
--	CASE MONTH(BirthDate)
--	WHEN 3 THEN N'봄'
--	WHEN 4 THEN N'봄'
--	WHEN 5 THEN N'봄'
--	WHEN 6 THEN N'여름'
--	WHEN 7 THEN N'여름'
--	WHEN 8 THEN N'여름'
--	WHEN 9 THEN N'가을'
--	WHEN 10 THEN N'가을'
--	WHEN 11 THEN N'가을'
--	ELSE N'겨울'
--	END AS BirthSeason
--FROM Employees

---- 해당 값이 없을 경우 NULL
--SELECT *,
--	CASE
--	WHEN MONTH(BirthDate) <= 2 THEN N'겨울'
--	WHEN MONTH(BirthDate) <= 5 THEN N'봄'

--	END AS BirthSeason
--FROM Employees

SELECT City, COUNT(City) AS CityCount
FROM Customers
WHERE Country = 'USA'
GROUP BY City
ORDER BY CityCount DESC
