USE Northwind

SELECT *
FROM Employees

SELECT LastName, FirstName
FROM Employees

SELECT LastName, FirstName
INTO EmployeeTest
FROM Employees

SELECT *
FROM EmployeeTest


USE Northwind

SELECT *
FROM EmployeeTest

-- index �߰�
CREATE INDEX Index_LastName
ON EmployeeTest(LastName)




USE Northwind


SELECT * 
FROM EmployeeTest
ORDER BY LastName


SELECT * 
FROM EmployeeTest
WHERE SUBSTRING(LastName, 1, 2) = 'Ki'



����



Index scan vs Index seek

USE Northwind

SELECT *
INTO OrderDetailTest
FROM [Order Details]

SELECT *
FROM OrderDetailTest
WHERE ProductID = 71


CREATE NONCLUSTERED INDEX Index_Order_Non
ON OrderDetailTest(OrderID, ProductID)



USE Northwind

SELECT *
INTO OrderDetailTest
FROM [Order Details]

SELECT *
FROM OrderDetailTest
WHERE OrderID = 10258


CREATE NONCLUSTERED INDEX Index_Order_Non
ON OrderDetailTest(OrderID, ProductID)

EXEC sp_helpindex 'OrderDetailTest'

SELECT name, index_id
FROM sys.indexes
WHERE object_id = object_id('OrderDetailTest')

DBCC IND('Northwind', 'OrderDetailTest', 3)

DBCC PAGE('Northwind', 1, 9120, 3)

--[ ������ �ּ�          ] [ ���� ID  ] [   ����   ]
--[8bit][8bit][8bit][8bit] [8bit][8bit] [8bit][8bit]
--HEAP RID
--[������ �ּ�(4byte)][(2byte)][����(2byte)]




USE Northwind

SELECT *
INTO OrderDetailTest
FROM [Order Details]

SELECT *
FROM OrderDetailTest
WHERE OrderID = 10258


CREATE NONCLUSTERED INDEX Index_Order_Non
ON OrderDetailTest(OrderID, ProductID)

EXEC sp_helpindex 'OrderDetailTest'

SELECT name, index_id
FROM sys.indexes
WHERE object_id = object_id('OrderDetailTest')

DBCC IND('Northwind', 'OrderDetailTest', 3)

DBCC PAGE('Northwind', 1, 9120, 3)

--[ ������ �ּ�          ] [ ���� ID  ] [   ����   ]
--[8bit][8bit][8bit][8bit] [8bit][8bit] [8bit][8bit]
--HEAP RID
--[������ �ּ�(4byte)][(2byte)][����(2byte)]

CREATE CLUSTERED INDEX Index_Order
ON OrderDetailTest(OrderID)

EXEC sp_helpindex 'OrderDetailTest'

SELECT name, index_id
FROM sys.indexes
WHERE object_id = object_id('OrderDetailTest')

DBCC IND('Northwind', 'OrderDetailTest', 3)

--HEAP RID ������
DBCC PAGE('Northwind', 1, 9144, 3)

SELECT *
FROM OrderDetailTest
ORDER BY OrderID

DBCC IND('Northwind', 'OrderDetailTest', 1)
DBCC IND('Northwind', 'OrderDetailTest', 3)


USE Northwind

CREATE TABLE TestTable
(
	id	INT NOT NULL,
	name NCHAR(50) NOT NULL,
	dummy NCHAR(1000) NULL
)

-- Clustered Index �����
CREATE CLUSTERED INDEX Index_id
ON TestTable(id)
--Non-Clustered Index �����
CREATE NONCLUSTERED INDEX Index_name
ON TestTable(name)

-- ���� ������ ä�� �ֱ�
DECLARE @i INT
SET @i = 1

WHILE(@i <= 1000)
BEGIN
	INSERT INTO TestTable
	VALUES(@i, 'Name' + CONVERT(varchar, @i), 'HelloWorld' + CONVERT(varchar, @i))
	SET @i = @i + 1
END


EXEC sp_helpindex 'TestTable'

SELECT name, index_id
FROM sys.indexes
WHERE object_id = object_id('TestTable')

DBCC IND('Northwind', 'TestTable', 1)
DBCC IND('Northwind', 'TestTable', 2)

SELECT *
FROM TestTable

--���� �����͸� ã�� ���� �д� �ð�
SET STATISTICS TIME ON
--���� �����͸� ã�� ���� �д� ������ ��
SET STATISTICS IO ON


SELECT *
FROM TestTable
WHERE id = 99

SELECT *
FROM TestTable
WHERE name = 'Name99'

GO
CREATE TABLE Test
(
	id	INT NOT NULL,
	name NCHAR(50) NOT NULL,
	dummy NCHAR(1000) NULL
)

-- ���� ������ ä�� �ֱ�
DECLARE @i INT
SET @i = 1

WHILE(@i <= 1000)
BEGIN
	INSERT INTO Test
	VALUES(@i, 'Name' + CONVERT(varchar, @i), 'HelloWorld' + CONVERT(varchar, @i))
	SET @i = @i + 1
END


SELECT *
FROM Test
WHERE id = 99

SELECT *
FROM TestTable
WHERE id = 99
