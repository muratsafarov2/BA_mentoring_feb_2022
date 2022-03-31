/* 
Написать запрос, который выводит только недоставленные заказы из таблицы Orders. 

Запрос должен высвечивать только колонки:
•	OrderID
•	ShippedDate

Для колонки ShippedDate вместо значений NULL выводить строку ‘Not Shipped’ – для этого использовать системную функцию CASЕ. 
*/

select OrderID,
case when ShippedDate is null then 'Not Shipped' end as 'ShippedDate'
from dbo.Orders
where ShippedDate is null;