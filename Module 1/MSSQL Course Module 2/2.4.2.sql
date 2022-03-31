/*
2.4.2.	 Для формирования алфавитного указателя Employees высветить из таблицы Employees список только тех букв алфавита, с которых начинаются фамилии Employees (колонка LastName ) из этой таблицы. 
Алфавитный список должен быть отсортирован по возрастанию.
*/

select distinct left(LastName, 1) as N'First Letter'
from Employees
order by left(LastName, 1); 