--USE TestDB

--SELECT * 
--FROM Players

---- CREATE INDEX : 인덱스 만들기
---- DROP INDEX	: 인덱스 삭제
---- CREATE INDEX 이름 ON 테이블명(열이름{Column})
--CREATE INDEX iName ON Players(PlayerName)



--USE Northwind

---- Order중에 Employee가 보낸 Freight의 평균값
--SELECT EmployeeID, AVG(Freight) AS AvgFreight
--FROM Orders
--GROUP BY EmployeeID

---- Order중에 Employee가 보낸 Freight 평균값이 80 초과된 경우
--SELECT EmployeeID, AVG(Freight) AS AvgFreight
--FROM Orders
--GROUP BY EmployeeID
--HAVING AVG(Freight) > 80



--USE Northwind

----UNION 

---- Order중에 Employee가 보낸 Freight 평균값이 80 초과된 경우
--SELECT EmployeeID, AVG(Freight) AS AvgFreight
--FROM Orders
--GROUP BY EmployeeID
--HAVING AVG(Freight) > 80

---- Employee중에 Country가 USA인 경우
--SELECT EmployeeID, Country
--FROM Employees
--WHERE Country = 'USA'



--USE Northwind

----합집합 : 둘다 포함
----UNION ALL : 중복허용
--SELECT EmployeeID
--FROM Orders
--GROUP BY EmployeeID
--HAVING AVG(Freight) > 80
--UNION ALL
--SELECT EmployeeID
--FROM Employees
--WHERE Country = 'USA'



USE Northwind

--교집합 : 둘다 만족 하는 조건만 포함 == &&
--INTERSECT : 
SELECT EmployeeID
FROM Orders
GROUP BY EmployeeID
HAVING AVG(Freight) > 80
INTERSECT
SELECT EmployeeID
FROM Employees
WHERE Country = 'USA'



