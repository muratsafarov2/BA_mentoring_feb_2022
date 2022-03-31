/*
2.5.3.	Высветить всех поставщиков колонка CompanyName в таблице Suppliers, 
у которых нет хотя бы одного продукта на складе (UnitsInStock в таблице Products равно 0). 

Использовать вложенный SELECT для этого запроса с использованием оператора IN. 

Можно ли использовать вместо оператора IN оператор '=' ?
*/

select CompanyName, SupplierID from dbo.Suppliers
where 0 in (
	select dbo.Products.UnitsInStock from dbo.Products
	where dbo.Suppliers.SupplierID = dbo.Products.SupplierID);

-- Можно ли использовать вместо оператора IN оператор '=' ?
-- да: 'where 0 ='