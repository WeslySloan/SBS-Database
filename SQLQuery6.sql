--USE TestDB

--SELECT * 
--FROM Players

---- CREATE INDEX : �ε��� �����
---- DROP INDEX	: �ε��� ����
---- CREATE INDEX �̸� ON ���̺��(���̸�{Column})
--CREATE INDEX iName ON Players(PlayerName)



--USE Northwind

---- Order�߿� Employee�� ���� Freight�� ��հ�
--SELECT EmployeeID, AVG(Freight) AS AvgFreight
--FROM Orders
--GROUP BY EmployeeID

---- Order�߿� Employee�� ���� Freight ��հ��� 80 �ʰ��� ���
--SELECT EmployeeID, AVG(Freight) AS AvgFreight
--FROM Orders
--GROUP BY EmployeeID
--HAVING AVG(Freight) > 80



--USE Northwind

----UNION 

---- Order�߿� Employee�� ���� Freight ��հ��� 80 �ʰ��� ���
--SELECT EmployeeID, AVG(Freight) AS AvgFreight
--FROM Orders
--GROUP BY EmployeeID
--HAVING AVG(Freight) > 80

---- Employee�߿� Country�� USA�� ���
--SELECT EmployeeID, Country
--FROM Employees
--WHERE Country = 'USA'



--USE Northwind

----������ : �Ѵ� ����
----UNION ALL : �ߺ����
--SELECT EmployeeID
--FROM Orders
--GROUP BY EmployeeID
--HAVING AVG(Freight) > 80
--UNION ALL
--SELECT EmployeeID
--FROM Employees
--WHERE Country = 'USA'



USE Northwind

--������ : �Ѵ� ���� �ϴ� ���Ǹ� ���� == &&
--INTERSECT : 
SELECT EmployeeID
FROM Orders
GROUP BY EmployeeID
HAVING AVG(Freight) > 80
INTERSECT
SELECT EmployeeID
FROM Employees
WHERE Country = 'USA'



