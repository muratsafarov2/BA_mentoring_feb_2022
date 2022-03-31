/*
3.2.6.	 По таблице Employees найти для каждого продавца его руководителя, т.е. кому он делает репорты. 
Высветить колонки с именами 'User Name' (LastName) и 'Boss'. 
В колонках должны быть высвечены имена из колонки LastName. 
Высвечены ли все продавцы в этом запросе?
*/

use Northwind;
go

select 
	Employees.LastName as 'User Name',
	Employees1.LastName as Boss
from 
	Employees
		inner join 
			Employees as Employees1
				on Employees.ReportsTo = Employees1.EmployeeID

go

select count(EmployeeID) as 'Number of employees'
from Employees

go

-- не высвечен один сотрудник