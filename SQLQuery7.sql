USE Northwind

SELECT * 
FROM Customers
SELECT *
FROM Suppliers

-- RIGHT JOIN (오른쪽 기준으로 결합)
-- ContactName가 오른쪽 (Customers) 테이블 해당 있으면 무조건 표기
-- 왼쪽 (Suppliers) 테이블에 ContactName가 없다면 NULL로 표시

SELECT *
FROM Suppliers AS S
RIGHT JOIN Customers AS C
	ON S.ContactName = c.ContactName

--DECLARE : 선언하다

SELECT TOP 1* 
FROM Customers 
	INNER JOIN Orders
	ON Customers.CustomerID = Orders.CustomerID
ORDER BY Freight DESC


DECLARE @i AS INT
SET @i = 10

SELECT @i AS Num

-- Batch 
-- GO 새롭게 시작
GO

--DECLARE @i AS INT = 20
--SELECT @i AS Other


--IF 만약에 해당 조건을 충족 했을경우 실행
-- ELSE ~아니라면 IF 조건을 제외한 나머지 였을경우 실행

DECLARE @i AS INT = 10
-- IF 조건 한줄만 실행
IF @i = 10
BEGIN -- BEGIN : 시작 여기서부터
	PRINT('i는 10입니다.')
	PRINT('i는 10입니다.')
END -- END : 끝 여기까지
ELSE
BEGIN
	PRINT('i는 10이 아닙니다.')
END


DECLARE @i AS INT = 0
-- WHILE ~동안 : 반복실행
-- WHILE 조건 <- 조건을 만족한다면 실행
WHILE @i <= 10
BEGIN 
	SET @i = @i + 1
	IF @i = 6 CONTINUE -- CONTINUE 만나면 아래 내용 실행 X 처음으로
	PRINT @i
END

PRINT('끝') 


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
---- BEGIN TRAN: 문서작을 시작 하겠음.  -- 임시 공간에 저장
---- COMMIT	 : 문서를 적용			-- 실제 테이블에 적용
---- ROLLBACK	 : 문서를 파기			-- 데이터를 날림
---- 모든것이 이루어 지거나 아에 이루어 지지 않거나 All or Nothing
--BEGIN TRAN
--INSERT INTO Player VALUES(3, 'C', 3, GETUTCDATE())
--ROLLBACK

--SELECT *
--FROM Player
