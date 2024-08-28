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

-- 함수
-- 함수 OVER ([PARTITION] [ORDER BY] [ROWS])

SELECT *,
	ROW_NUMBER()  OVER (ORDER BY UnitPrice DESC) AS RowNum,
	RANK()  OVER (ORDER BY UnitPrice DESC) AS RankNum,
	DENSE_RANK()  OVER (ORDER BY UnitPrice DESC) AS DenseRankNum,
	NTILE(10) OVER (ORDER BY UnitPrice DESC) AS NtileNum
FROM Products


USE Northwind

SELECT*
FROM Products

-- 그룹별 순위를 매기고 싶을때

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



-- FIRST_VALUE(값) : 첫번째 값을 출력
-- LAST_VALUE(값) : 마지막 값을 출력
SELECT *,
	FIRST_VALUE(Freight)  OVER (PARTITION BY CustomerID 
								ORDER BY Freight DESC
								ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS FirstFreight,
	LAST_VALUE(Freight)  OVER (PARTITION BY CustomerID 
								ORDER BY Freight DESC
								ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS LastFreight
FROM Orders
ORDER BY CustomerID



--인덱스 번호와 이름 조회하기
SELECT index_id, -- 인덱스의 ID(고유 식별자)를 선택
	   name		 -- 인덱스의 이름 선택
FROM sys.indexes -- 시스템의 모든 인덱스 조회
				 -- 이 뷰는 데이터베이스 내의 모든 인덱스에 대한 정보를 포함
WHERE object_id = object_id('Test') -- 조건절 여기서 object_id 함수를 사용하여
									-- 'Test' 라는 이름의 테이블에 해당하는 object_id를 가져옴
									-- 이 object_id를 사용하여 해당 테이블의 인덱스만 필터링
