/*
По таблице Orders найти количество различных покупателей (CustomerID), сделавших заказы. 
Использовать функцию COUNT и не использовать предложения WHERE и GROUP.
*/

use Northwind;
go

select count(distinct CustomerID) as 'Number of Customers' from Orders;