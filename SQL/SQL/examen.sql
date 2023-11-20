--1) Выдать список книг прошлого века
select *
from книги 
where год_изд <= TO_DATE('01/01/1900','dd/mm/yyyy')
--2) Читатели с тематикой Х(больше 18 лет) и округленный до близжайшего целого меньшего возраста
SELECT FLOOR(TRUNC(TO_NUMBER(SYSDATE - TO_DATE(дата_рожд)) / 365.25)) AS AGE
    FROM читатели
    WHERE TRUNC(TO_NUMBER(SYSDATE - TO_DATE(дата_рожд)) / 365.25) >= 18
--3) Читатели которые купиле больше 2 книг
select ID_ЧИТ, count(ID_ЧИТ) as купил_книг
from заказы
group by ID_ЧИТ
--4) Удаляю читателей которые не вернули книгу вовремя4
delete 
from заказы
where дата_возвр < to_date('05-25-2022','mm-dd-YYYY');
--5) 