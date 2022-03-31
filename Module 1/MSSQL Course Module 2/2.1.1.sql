/*
Выбрать в таблице Orders заказы, которые одновременно удовлетворяют условиям:
•	были доставлены после 6 мая 1998 года (колонка ShippedDate) включительно 
•	доставлены с ShipVia >= 2. 

Формат указания даты должен быть верным при любых региональных настройках, согласно требованиям статьи “Writing International Transact-SQL Statements” в Books Online раздел “Accessing and Changing Relational Data Overview”. 
Этот метод использовать далее для всех заданий. 

Запрос должен высвечивать только колонки:
•	OrderID
•	ShippedDate
•	ShipVia. 

Пояснить почему сюда не попали заказы с NULL-ом в колонке ShippedDate.
*/

select OrderID, ShippedDate, ShipVia
from dbo.Orders
where ShippedDate >= CONVERT(DATETIME, '19980506', 101)  
and ShipVia >= 2;

--Сюда не попали заказы с NULL-ом в колонке ShippedDate, потому что NULL - это неопределенное значение. Сравнение с NULL - также NULL.