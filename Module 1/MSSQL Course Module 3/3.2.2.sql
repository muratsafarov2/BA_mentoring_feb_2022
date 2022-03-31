/*
3.2.2
По таблице Orders найти количество заказов, оформленных каждым продавцом. 
Заказ для указанного продавца – это любая запись в таблице Orders, 
где в колонке EmployeeID задано значение для данного продавца. 
В результатах запроса надо высвечивать колонку с именем продавца 
(Должно высвечиваться имя полученное конкатенацией LastName & FirstName. 
Эта строка LastName & FirstName должна быть получена отдельным запросом в 
колонке основного запроса. Также основной запрос должен использовать группировку 
по EmployeeID.) с названием колонки ‘Seller’ и колонку c количеством заказов 
высвечивать с названием 'Amount'. 
Результаты запроса должны быть упорядочены по убыванию количества заказов.
*/

use Northwind;
go

select 
	count(EmployeeID) as Amount, 
	(
		select concat(employees.LastName, ' ', employees.FirstName) 
		from dbo.Employees as employees 
		where employees.EmployeeID = orders.EmployeeID
	) as Seller 
from dbo.Orders as orders
group by EmployeeID
order by Amount desc;