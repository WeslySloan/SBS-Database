--USE  Northwind

--SELECT * 
--FROM Region

----INSERT INTO [���̺��] (��, ...) VALUES(��, ....)
--INSERT INTO Region (RegionDescription, RegionID)
--VALUES ('TEST', 10)


SELECT *
FROM Employees

INSERT INTO EmployeeTest
SELECT EmployeeID, LastName, FirstName
FROM Employees

SELECT * 
FROM EmployeeTest