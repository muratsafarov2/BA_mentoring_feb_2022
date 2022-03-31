/*
2.3.1.	 Выбрать все заказы (OrderID) из таблицы Order Details (заказы не должны повторяться), где встречаются продукты с количеством от 3 до 10 включительно – это колонка Quantity в таблице Order Details. 
Использовать оператор BETWEEN. 
Запрос должен высвечивать только колонку OrderID.
*/

select OrderID
from dbo.[Order Details]
where Quantity between 3 and 10;