/*
Найти покупателей и продавцов, которые живут в одном городе. 
В результатах запроса необходимо вывести следующие заголовки для результатов запроса: 
•	‘Person’, 
•	‘Type’ (здесь надо выводить строку ‘Customer’ или  ‘Seller’ в завимости от типа записи), 
•	‘City’. 
Отсортировать результаты запроса по колонке ‘City’ и по ‘Person’.

Если в городе живут только продавцы или только покупатели, 
то информация о таких покупателя и продавцах не должна попадать в результирующий набор. 
Не использовать конструкции UNION и JOIN. 
*/

use Northwind;
go

DROP TABLE #Person

create table #Person (
	Person varchar(50),
	Type varchar(50),
	City varchar(50),
)

insert into #Person (Person, Type, City)
select 
	ContactName,
	'Customer',
	City
from Customers

insert into #Person (Person, Type, City)
select 
	concat(FirstName, ' ', LastName),
	'Employee',
	City
from Employees

select * from #Person
where 
	exists (select * from Customers where Customers.City = #Person.City) 
	or exists (select * from Employees where Employees.City = #Person.City)
order by City, Person;