/*
2.2.1.	 Выбрать из таблицы Customers всех заказчиков, проживающих в USA и Canada. Запрос сделать с только помощью оператора IN. 
Высвечивать колонки с именем пользователя и названием страны в результатах запроса. 
Упорядочить результаты запроса по имени заказчиков и по месту проживания.
*/

select ContactName, Country
from dbo.Customers
where Country IN ('USA', 'Canada')
order by ContactName, Country;