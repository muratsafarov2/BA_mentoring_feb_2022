/*
2.5.1.	Определить продавцов, которые обслуживают регион 'Western' (таблица Region). Результаты запроса должны высвечивать поля: 
•	'LastName' продавца
•	название обслуживаемой территории ('TerritoryDescription' из таблицы Territories).

Запрос должен использовать JOIN в предложении FROM. 

Для определения связей между таблицами Employees и Territories надо использовать графические диаграммы для базы Northwind.
*/

select dbo.Employees.LastName, dbo.Region.RegionDescription from dbo.Employees
join dbo.EmployeeTerritories
on dbo.Employees.EmployeeID = dbo.EmployeeTerritories.EmployeeID
join dbo.Territories
on dbo.Territories.TerritoryID = dbo.EmployeeTerritories.TerritoryID
join dbo.Region
on dbo.Region.RegionID = dbo.Territories.RegionID
where dbo.Region.RegionDescription = 'Western';