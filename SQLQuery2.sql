--SELECT *
--FROM Employees

--SELECT *
--FROM Employees
--WHERE TitleOfCourtesy = 'Ms.'
--ORDER BY BirthDate DESC -- ��������

---- =  : ���ٸ�
---- != : �ٸ��ٸ�
---- > : ���� ������ Ŭ��
---- < : ���� ������ ������
---- >= : ���� ������ ũ�ų� ������
---- <= : ���� ������ �۰ų� ������

---- AND : ������ �Ѵ� �������� ���
---- OR : ���� �ϳ��� ������ ���� ���� ���

--SELECT TOP 20 PERCENT * -- 20�ۼ�Ʈ�� �����ּ���
--FROM Employees
--ORDER BY HireDate DESC, BirthDate ASC


--SELECT *
--FROM Employees
--ORDER BY HireDate DESC, BirthDate ASC
--OFFSET 1 ROWS FETCH NEXT 3 ROWS ONLY
---- OFFSET 1��° ���� 3����


--SELECT ShipCity
--FROM orders
--WHERE OrderID % 2 = 0
--ORDER BY Freight DESC
--OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY

SELECT 