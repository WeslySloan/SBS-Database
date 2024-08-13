--SELECT *
--FROM Employees

--SELECT *
--FROM Employees
--WHERE TitleOfCourtesy = 'Ms.'
--ORDER BY BirthDate DESC -- 내림차순

---- =  : 같다면
---- != : 다르다면
---- > : 값이 왼쪽이 클때
---- < : 값이 왼쪽이 작을때
---- >= : 값이 왼쪽이 크거나 같을때
---- <= : 값이 왼쪽이 작거나 같을때

---- AND : 조건이 둘다 만족했을 경우
---- OR : 둘중 하나라도 조건을 만족 했을 경우

--SELECT TOP 20 PERCENT * -- 20퍼센트만 보여주세요
--FROM Employees
--ORDER BY HireDate DESC, BirthDate ASC


--SELECT *
--FROM Employees
--ORDER BY HireDate DESC, BirthDate ASC
--OFFSET 1 ROWS FETCH NEXT 3 ROWS ONLY
---- OFFSET 1번째 부터 3개의


--SELECT ShipCity
--FROM orders
--WHERE OrderID % 2 = 0
--ORDER BY Freight DESC
--OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY

SELECT 