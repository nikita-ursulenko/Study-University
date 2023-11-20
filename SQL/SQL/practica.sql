-- Сортирую с Учителей с пкадемической степенью 
SELECT *
FROM profesori
WHERE ACADEMIC_DEGREE = 'DOS'
ORDER BY PRENUME
-- Сортирую академ степень и меньшее кол-во опыта

SELECT *
FROM profesori
WHERE ACADEMIC_DEGREE = 'DOS'
ORDER BY EXPERIENCE DESC
--Выбрал всех професоров

SELECT *
from profesori
where GRAD_DIDACTIC in 'Prof'

-- вывел кол-во курсоров для каждой линии
SELECT count(ID_PROF), NUME
from profesori
group by NUME
--Сколько выдов опыта 
SELECT COUNT(*), EXPERIENCE
    FROM profesori
    GROUP BY EXPERIENCE
    HAVING count(*)= (select MAX(count(*)) FROM profesori GROUP BY EXPERIENCE)

-- Вывел учителя группы М22
select * 
    from profesori S,didactic D
    where s.ID_PROF = d.ID_PROF and GRUPA = 'M22'

-- Вывод Предмет и курс выше 45 кредитов

select *
    from didactic DC, cursuri CR
    where DC.id_curs = CR.id_curs and credite > 45;

--Опыт работы между 6 лет и 15 лет
SELECT * 
FROM profesori
WHERE experience BETWEEN 6 AND 15
ORDER BY experience;

--Вывел соединение 
SELECT *
FROM didactic
LEFT JOIN cursuri
ON didactic.ID_CURS=cursuri.ID_CURS;

