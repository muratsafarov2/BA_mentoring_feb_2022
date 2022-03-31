/*
2.5.4.	Высветить всех продавцов, которые имеют более 150 заказов. 
Использовать вложенный коррелированный SELECT.
*/

select EmployeeID, LastName from dbo.Employees
where 150 < (select count(dbo.Orders.OrderID) from dbo.Orders
	where dbo.Orders.EmployeeID = dbo.Employees.EmployeeID);