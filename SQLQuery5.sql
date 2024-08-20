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

--<문제>

--이회사에서 가장 주문많이 한 직원 정보 출력

--<문제>

--이회사에서 가장 많이 팔린 상품 정보

--<문제>

--이회사에서 가장 매출을 많이 내준 상품은?

--<문제>

--가장 우리 상품을 많이 사준 고객의 판매 실적.

--<문제>

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

-- CREATE	: 테이블 생성
-- DROP		: 테이블 삭제
-- ALTER	: 테이블 수정

-- CREATE TABLE 테이블명(열이름 자료형 [DEFAULT] 기본값 [NULL | NOT NULL],...)
CREATE TABLE Players
(
	PlayerID INTEGER NOT NULL,
	PlayerName VARCHAR(10) NOT NULL,
	PlayerLv INTEGER DEFAULT 0,
	CreatedTime DATETIME
)

SELECT *
FROM Players


--테이블 삭제
-- DROP TABLE 테이블명
DROP TABLE Players