/*3.2.5.	 
Найти всех покупателей, которые живут в одном городе. 
В запросе использовать соединение таблицы Customers c собой - самосоединение. 
Высветить колонки CustomerID и City. 
Запрос не должен высвечивать дублируемые записи. 
Для проверки написать запрос, который высвечивает города, 
которые встречаются более одного раза в таблице Customers. Это позволит проверить правильность запроса.
*/

use Northwind;
go

select
	Customers.CustomerID as CustomerID,
	Customers.City
	from
		Customers
			inner join
			Customers as Customers1
				on Customers.City
				= Customers1.City
				and Customers.CustomerID
				< Customers1.CustomerID

union

select 
	Customers1.CustomerID as CustomerID,
	Customers1.City
	from
		Customers
			inner join
			Customers as Customers1
				on Customers.City
				= Customers1.City
				and Customers.CustomerID
				< Customers1.CustomerID
order by City

go

select City, count(City) as Occurances 
from Customers
group by City
having count(City) > 1
order by City;