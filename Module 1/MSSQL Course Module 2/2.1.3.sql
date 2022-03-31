/*
ОШИБКА
Conversion failed when converting date and/or time from character string.

2.1.3.	Выбрать в таблице Orders заказы, которые удовлетворяют хотя бы одному из условий: 
•	были доставлены после 6 мая 1998 года (колонка ShippedDate) не включая эту дату 
•	еще не доставлены. 

Запрос должен высвечивать только колонки:
•	OrderID (переименовать в Order Number)
•	ShippedDate (переименовать в Shipped Date)

Для колонки ShippedDate вместо значений NULL выводить строку ‘Not Shipped’, для остальных значений высвечивать дату в формате по умолчанию.
*/

select 
OrderID as 'Order Number', 
case 
when ShippedDate > CONVERT(DATETIME, '19980506', 101) then ShippedDate
else 'Not Shipped' 
end as 'Shipped Date'
from dbo.Orders
where (ShippedDate > CONVERT(DATETIME, '19980506', 101)) 
or ShippedDate is null;