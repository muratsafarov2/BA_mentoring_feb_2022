/*
2.2.2.	 Выбрать из таблицы Customers всех заказчиков, не проживающих в USA и Canada. Запрос сделать с помощью оператора IN. 
Высвечивать колонки с именем пользователя и названием страны в результатах запроса. 
Упорядочить результаты запроса по имени заказчиков.
*/

select ContactName, Country
from dbo.Customers
where Country NOT IN ('USA', 'Canada')
order by ContactName;