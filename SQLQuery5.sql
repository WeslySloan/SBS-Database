--ORDER BY EmployeeID

--SELECT *
--FROM Orders

--SELECT *
--FROM Employees

--SELECT *


--INSERT INTO TableTest (EmployeeID, LastName, FirstName, OrderCount)
--SELECT EmployeeID, LastName, FirstName, 
--(SELECT COUNT(*) FROM Orders WHERE Orders.EmployeeID = Employees.EmployeeID) AS OrderCount
--FROM Employees

--USE Northwind

--SELECT * 
--FROM Orders
--ORDER BY CustomerID

--SELECT *
--FROM Customers
--WHERE CustomerID IN (SELECT CustomerID FROM Orders)
--ORDER BY CustomerID

--<����>

--��ȸ�翡�� ���� �ֹ����� �� ���� ���� ���

--<����>

--��ȸ�翡�� ���� ���� �ȸ� ��ǰ ����

--<����>

--��ȸ�翡�� ���� ������ ���� ���� ��ǰ��?

--<����>

--���� �츮 ��ǰ�� ���� ���� ���� �Ǹ� ����.

--<����>

--SELECT TOP 1 E.EmployeeID, E.FirstName, E.LastName, COUNT(O.OrderID) AS TotalOrders
--FROM Employees E
--JOIN Orders O On E.EmployeeID = O.EmployeeID
--GROUP BY E.EmployeeID, E.FirstName, E.LastName
--ORDER BY TotalOrders DESC

--SELECT TOP 1 P.ProductID, P.ProductName, SUM(OD.Quantity) AS TotalQuantity
--From Products P
--JOIN [Order Details] OD ON P.ProductID = OD.ProductID
--GROUP BY P.ProductID, P.ProductName
--ORDER BY TotalQuantity DESC

--SELECT TOP 1 P.ProductName
--FROM products P
--JOIN [Order Details] OD ON P.ProductID = OD.ProductID
--GROUP BY P.ProductName
--ORDER BY SUM(OD.Quantity * OD.UnitPrice) DESC

--SELECT *
--FROM PRODUCTS

--SELECT *
--FROM [Order Details]

--SELECT *
--FROM ORDERS

CREATE DATABASE TestDB

USE TestDB

-- CREATE	: ���̺� ����
-- DROP		: ���̺� ����
-- ALTER	: ���̺� ����

-- CREATE TABLE ���̺��(���̸� �ڷ��� [DEFAULT] �⺻�� [NULL | NOT NULL],...)
CREATE TABLE Players
(
	PlayerID INTEGER NOT NULL,
	PlayerName VARCHAR(10) NOT NULL,
	PlayerLv INTEGER DEFAULT 0,
	CreatedTime DATETIME
)

SELECT *
FROM Players


--���̺� ����
-- DROP TABLE ���̺��
DROP TABLE Players