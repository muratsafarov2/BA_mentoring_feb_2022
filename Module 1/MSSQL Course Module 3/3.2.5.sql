/*3.2.5.	 
Найти всех покупателей, которые живут в одном городе. 
В запросе использовать соединение таблицы Customers c собой - самосоединение. 
Высветить колонки CustomerID и City. 
Запрос не должен высвечивать дублируемые записи. 
Для проверки написать запрос, который высвечивает города, 
которые встречаются более одного раза в таблице customers. Это позволит проверить правильность запроса.
*/

use Northwind;
go

select
	c.CustomerID as CustomerID,
	c.City
		from Customers as c
		inner join
		Customers as c1	
			on c.City
			= c1.City
			and c.CustomerID
			< c1.CustomerID

union

select 
	c1.CustomerID as CustomerID,
	c1.City
		from Customers as c	
		inner join
		Customers as c1
			on c.City
			= c1.City
			and c.CustomerID
			< c1.CustomerID

order by City

go

select City, count(City) as Occurances 
from Customers
group by City
having count(City) > 1
order by City;