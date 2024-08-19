--USE  Northwind

--SELECT * 
--FROM Region

----INSERT INTO [테이블명] (열, ...) VALUES(값, ....)
--INSERT INTO Region (RegionDescription, RegionID)
--VALUES ('TEST', 10)


SELECT *
FROM Employees

INSERT INTO EmployeeTest
SELECT EmployeeID, LastName, FirstName
FROM Employees

SELECT * 
FROM EmployeeTest