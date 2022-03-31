/*
2.5.2.	Высветить в результатах запроса имена всех заказчиков из таблицы Customers и суммарное количество их заказов из таблицы Orders. 

Принять во внимание, что у некоторых заказчиков нет заказов, но они также должны быть выведены в результатах запроса. 

Упорядочить результаты запроса по возрастанию количества заказов.
*/

select dbo.Customers.ContactName, COUNT(dbo.Orders.OrderID) as N'Number of Orders' from Customers
left join dbo.Orders
on dbo.Customers.CustomerID = dbo.Orders.CustomerID
group by dbo.Customers.ContactName
order by COUNT(dbo.Orders.OrderID);