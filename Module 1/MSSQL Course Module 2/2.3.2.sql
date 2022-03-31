/*
2.3.2.	 Выбрать всех заказчиков из таблицы Customers, у которых название страны начинается на буквы из диапазона b и g. 
Использовать оператор BETWEEN. 
Проверить, что в результаты запроса попадает Germany. 

Запрос должен высвечивать только колонки
•	CustomerID 
•	Country

Результат запроса должен быть отсортирован по Country.
*/

select CustomerID, Country
from dbo.Customers
where left(Country, 1) between 'b' and 'g'
order by Country;