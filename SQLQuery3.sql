USE Northwind


-- ���غ��� ��������
-- SELECT DATEDIFF(DAY, '20240101', GETDATE())

-- SELECT *
-- FROM EMPLOYEES

--SELECT CONCAT(FirstName, ' ', LastName) AS FullName
--FROM Employees
--WHERE MONTH(BirthDate) = MONTH(GETDATE());


--SELECT MONTH(BirthDate) AS BirthMonth,
--	CASE MONTH(BirthDate)
--	WHEN 3 THEN N'��'
--	WHEN 4 THEN N'��'
--	WHEN 5 THEN N'��'
--	WHEN 6 THEN N'����'
--	WHEN 7 THEN N'����'
--	WHEN 8 THEN N'����'
--	WHEN 9 THEN N'����'
--	WHEN 10 THEN N'����'
--	WHEN 11 THEN N'����'
--	ELSE N'�ܿ�'
--	END AS BirthSeason
--FROM Employees

---- �ش� ���� ���� ��� NULL
--SELECT *,
--	CASE
--	WHEN MONTH(BirthDate) <= 2 THEN N'�ܿ�'
--	WHEN MONTH(BirthDate) <= 5 THEN N'��'

--	END AS BirthSeason
--FROM Employees

SELECT City, COUNT(City) AS CityCount
FROM Customers
WHERE Country = 'USA'
GROUP BY City
ORDER BY CityCount DESC
