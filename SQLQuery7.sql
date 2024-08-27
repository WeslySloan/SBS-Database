USE Northwind

SELECT * 
FROM Customers
SELECT *
FROM Suppliers

-- RIGHT JOIN (������ �������� ����)
-- ContactName�� ������ (Customers) ���̺� �ش� ������ ������ ǥ��
-- ���� (Suppliers) ���̺� ContactName�� ���ٸ� NULL�� ǥ��

SELECT *
FROM Suppliers AS S
RIGHT JOIN Customers AS C
	ON S.ContactName = c.ContactName

--DECLARE : �����ϴ�

SELECT TOP 1* 
FROM Customers 
	INNER JOIN Orders
	ON Customers.CustomerID = Orders.CustomerID
ORDER BY Freight DESC


DECLARE @i AS INT
SET @i = 10

SELECT @i AS Num

-- Batch 
-- GO ���Ӱ� ����
GO

--DECLARE @i AS INT = 20
--SELECT @i AS Other


--IF ���࿡ �ش� ������ ���� ������� ����
-- ELSE ~�ƴ϶�� IF ������ ������ ������ ������� ����

DECLARE @i AS INT = 10
-- IF ���� ���ٸ� ����
IF @i = 10
BEGIN -- BEGIN : ���� ���⼭����
	PRINT('i�� 10�Դϴ�.')
	PRINT('i�� 10�Դϴ�.')
END -- END : �� �������
ELSE
BEGIN
	PRINT('i�� 10�� �ƴմϴ�.')
END


DECLARE @i AS INT = 0
-- WHILE ~���� : �ݺ�����
-- WHILE ���� <- ������ �����Ѵٸ� ����
WHILE @i <= 10
BEGIN 
	SET @i = @i + 1
	IF @i = 6 CONTINUE -- CONTINUE ������ �Ʒ� ���� ���� X ó������
	PRINT @i
END

PRINT('��') 


--USE GameDB

--CREATE TABLE Player
--(
--	playerID INTEGER,
--	playerName VARCHAR(20),
--	playerLv INTEGER,
--	CreateTime DATETIME
--)

--SELECT *
--FROM Player

--INSERT INTO Player VALUES(1, 'A', 1, GETUTCDATE())

--SELECT *
--FROM Player

--USE GameDB

--CREATE TABLE Player
--(
--	playerID INTEGER,
--	playerName VARCHAR(20),
--	playerLv INTEGER,
--	CreateTime DATETIME
--)


---- TRANSACTION
---- BEGIN TRAN: �������� ���� �ϰ���.  -- �ӽ� ������ ����
---- COMMIT	 : ������ ����			-- ���� ���̺� ����
---- ROLLBACK	 : ������ �ı�			-- �����͸� ����
---- ������ �̷�� ���ų� �ƿ� �̷�� ���� �ʰų� All or Nothing
--BEGIN TRAN
--INSERT INTO Player VALUES(3, 'C', 3, GETUTCDATE())
--ROLLBACK

--SELECT *
--FROM Player
