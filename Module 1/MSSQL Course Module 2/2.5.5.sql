/*
2.5.5.	Высветить всех заказчиков (таблица Customers), которые не имеют ни одного заказа (подзапрос по таблице Orders). 

Использовать коррелированный SELECT и оператор EXISTS.
*/

select CustomerID, ContactName from dbo.Customers
where not exists (select OrderID from dbo.Orders
	where dbo.Orders.CustomerID = dbo.Customers.CustomerID);