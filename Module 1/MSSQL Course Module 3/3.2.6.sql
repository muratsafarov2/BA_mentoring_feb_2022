/*
3.2.6.	 По таблице Employees найти для каждого продавца его руководителя, т.е. кому он делает репорты. 
Высветить колонки с именами 'User Name' (LastName) и 'Boss'. 
В колонках должны быть высвечены имена из колонки LastName. 
Высвечены ли все продавцы в этом запросе?
*/

use Northwind;
go

select 
	e.LastName as 'User Name',
	e1.LastName as Boss
	from Employees as e
		inner join Employees as e1
			on e.ReportsTo = e1.EmployeeID

go

select count(EmployeeID) as 'Number of employees'
from Employees

go

-- не высвечен один сотрудник