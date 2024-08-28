USE GameDB

DROP TABLE Players

CREATE TABLE Players
(
	PlayerID INTEGER NOT NULL,
	PlayerName VARCHAR(20),
	PlayerLv INTEGER,
	CreateTime DATETIME
)

ALTER TABLE Players
ADD CONSTRAINT PK_PlayerID PRIMARY KEY(PlayerID)


USE Northwind

SELECT*
FROM Products

-- �Լ�
-- �Լ� OVER ([PARTITION] [ORDER BY] [ROWS])

SELECT *,
	ROW_NUMBER()  OVER (ORDER BY UnitPrice DESC) AS RowNum,
	RANK()  OVER (ORDER BY UnitPrice DESC) AS RankNum,
	DENSE_RANK()  OVER (ORDER BY UnitPrice DESC) AS DenseRankNum,
	NTILE(10) OVER (ORDER BY UnitPrice DESC) AS NtileNum
FROM Products


USE Northwind

SELECT*
FROM Products

-- �׷캰 ������ �ű�� ������

SELECT *
FROM Orders
ORDER BY CustomerID

SELECT *,
RANK() OVER (PARTITION BY CustomerID ORDER BY Freight DESC) AS TopRank
FROM Orders
ORDER BY CustomerID


USE Northwind

SELECT*
FROM Products



-- FIRST_VALUE(��) : ù��° ���� ���
-- LAST_VALUE(��) : ������ ���� ���
SELECT *,
	FIRST_VALUE(Freight)  OVER (PARTITION BY CustomerID 
								ORDER BY Freight DESC
								ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS FirstFreight,
	LAST_VALUE(Freight)  OVER (PARTITION BY CustomerID 
								ORDER BY Freight DESC
								ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS LastFreight
FROM Orders
ORDER BY CustomerID



--�ε��� ��ȣ�� �̸� ��ȸ�ϱ�
SELECT index_id, -- �ε����� ID(���� �ĺ���)�� ����
	   name		 -- �ε����� �̸� ����
FROM sys.indexes -- �ý����� ��� �ε��� ��ȸ
				 -- �� ��� �����ͺ��̽� ���� ��� �ε����� ���� ������ ����
WHERE object_id = object_id('Test') -- ������ ���⼭ object_id �Լ��� ����Ͽ�
									-- 'Test' ��� �̸��� ���̺� �ش��ϴ� object_id�� ������
									-- �� object_id�� ����Ͽ� �ش� ���̺��� �ε����� ���͸�
