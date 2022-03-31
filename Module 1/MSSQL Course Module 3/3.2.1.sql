/*
По таблице Orders найти количество заказов с группировкой по годам. 
В результатах запроса надо высвечивать две колонки c названиями Year и Total. 

Написать проверочный запрос, который вычисляет количество всех заказов.
*/

use Northwind;
go

select year(OrderDate) as 'Year', count(OrderID) as 'Total' from Orders
group by year(OrderDate);

select count(OrderID) as 'Total Number of Orders' from Orders;
