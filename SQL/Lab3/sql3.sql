--1 Напишите запрос для отображения сегодняшней даты. Назовите столбец «Сегодня».
SELECT CURRENT_DATE as Сегодня FROM DUAL;

--2 Для каждого учащегося отобразите имя, дату рождения и количество месяцев между текущей датой и датой рождения.
SELECT nume, data_nastere, ROUND(MONTHS_BETWEEN(CURRENT_DATE, data_nastere), 2) FROM studenti;

--3 Отображение дня недели, когда родился каждый ученик.
SELECT TO_CHAR(DATA_NASTERE ,'Day') FROM STUDENTI;

--4 Используя функцию конкатенации, получите для каждого студента текст «Студент <имя> находится в группе <группа>».
SELECT 'Студент '|| NUME ||' находится в группе '|| GRUPA FROM STUDENTI;

--5 Отобразите биржевую стоимость 10 символами, заполнив числовое значение символом $.
SELECT BURSA || '$' FROM STUDENTI;

--6 Для учителей, имена которых начинаются с буквы B, отображать имя с первой строчной и остальными заглавными буквами, а также длину (число символов a) имени.
SELECT LOWER(SUBSTR(NUME,1,1)) || UPPER(SUBSTR(NUME,2,10)) AS NUME, REGEXP_COUNT( NUME, 'a') AS LEIGHT FROM PROFESORI WHERE SUBSTR(NUME,1,1)='B';

--7 Для каждого учащегося укажите имя, дату рождения, дату, когда учащийся должен отпраздновать свой день рождения, и первое после него воскресенье.
SELECT nume, TO_CHAR(data_nastere, 'DD-MM-YYYY') as data_nastere, TO_CHAR(data_nastere, 'DD-MM')||TO_CHAR(CURRENT_DATE, '-YYYY') as data_sarbator, TO_CHAR(NEXT_DAY(TO_CHAR(data_nastere, 'MM/DD')||TO_CHAR(CURRENT_DATE, '/YYYY'), 'SUNDAY'), 'DD-MM-YYYY') as duminica FROM studenti;

