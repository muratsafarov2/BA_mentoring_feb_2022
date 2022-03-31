/*   
3.2.3.	По таблице Orders найти количество заказов
 Условия:
	Заказы сделаны каждым продавцом и для каждого покупателя. 
	Заказы сделаны в 1998 году.
 В результатах запроса надо высвечивать:
	    колонку с именем продавца (название колонки ‘Seller’),
	    колонку с именем покупателя (название колонки ‘Customer’) 
	    колонку c количеством заказов высвечивать с названием 'Amount'.
В запросе необходимо использовать специальный оператор языка T-SQL для работы с выражением GROUP 
(Этот же оператор поможет выводить строку “ALL” в результатах запроса).  

Группировки должны быть сделаны по ID продавца и покупателя. 

Результаты запроса должны быть упорядочены по: 
	    продавцу, 
	    покупателю 
	    убыванию количества продаж.  

В результатах должна быть сводная информация по продажам.:

Seller	Customer	Amount

ALL 	ALL		<общее число продаж>
<имя>	ALL		<число продаж для данного продавца>
ALL	<имя>		<число продаж для данного покупателя>
<имя>	<имя>		<число продаж данного продавца для даннного покупателя>
*/

use Northwind;
go

select 
	case
		when e.EmployeeID is null then 'ALL'
		else e.FirstName
	end as Seller, 
	COALESCE(c.ContactName, 'ALL') as Customer,
	count(o.OrderID) as Amount
from Employees as e
join Orders as o on e.EmployeeID = o.EmployeeID
join Customers as c on c.CustomerID = o.CustomerID
where year(o.OrderDate) = '1998'
group by 
	grouping sets(
		(),
		(e.EmployeeID,
		e.FirstName),
		(c.CustomerID,
		c.ContactName),
		(e.EmployeeID, 
		c.CustomerID,
		e.FirstName, 
		e.LastName, 
		c.ContactName)
		)
order by
	e.FirstName asc,
	c.ContactName asc,
	Amount desc;