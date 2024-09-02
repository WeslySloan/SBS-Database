USE Northwind

SELECT * 
FROM OrderDetailTest

-- 복합 인덱스(OrderID, ProductID)
CREATE INDEX Index_Order
ON OrderDetailTest(OrderID, ProductID)

-- 'OrderDetailTest' 인덱스 정보 살펴보기
EXEC sp_helpindex 'OrderDetailTest'

-- 'OrderDetailTest' 인덱스 id 찾기
SELECT index_id, name
FROM sys.indexes
WHERE object_id = object_id('OrderDetailTest')

-- 인덱스 정보 조회
DBCC IND('Northwind', OrderDetailTest, 2)

--			   8160
-- 8104 8128 8129 8130 8131 8132  

SELECT * 
FROM OrderDetailTest
ORDER BY OrderID

SELECT *
FROM OrderDetailTest
WHERE OrderID = 10248 AND ProductID = 11

SELECT *
FROM OrderDetailTest
WHERE UnitPrice = 14.00 AND ProductID = 11



--USE Northwind

--SELECT * 
--FROM [Order Details]

---- 인덱스 정보 조회
--DBCC IND('Northwind', [Order Details], 2)

----		641
---- 640 642 643 644

---- 해당 페이지 살펴보기
--DBCC PAGE('Northwind', 1, 640, 3)
