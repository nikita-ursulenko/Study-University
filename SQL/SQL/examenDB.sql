DROP TABLE темы
/
DROP TABLE книги
/
DROP TABLE авторы
/
DROP TABLE авторы_книги
/
DROP TABLE читатели
/
DROP TABLE заказы
/
CREATE TABLE темы(
  id_тем CHAR(4) NOT NULL PRIMARY KEY,
  наим_тем VARCHAR2(50)
  )
/
CREATE TABLE книги(
  id_кн CHAR(4) NOT NULL PRIMARY KEY,
  наим_кн VARCHAR2(50),
  год_изд DATE,
  цена NUMBER(4),
  id_тем CHAR(4) NOT NULL REFERENCES темы(id_тем)
  )
/
CREATE TABLE авторы(
  id_авт CHAR(4) NOT NULL PRIMARY KEY,
  фам VARCHAR2(50),
  имя VARCHAR2(50)
  )
/
CREATE TABLE авторы_книги(
  id_кн CHAR(4) NOT NULL REFERENCES книги(id_кн),
  id_авт CHAR(4) NOT NULL REFERENCES авторы(id_авт)
  
  )
/
CREATE TABLE читатели(
  id_чит CHAR(4) NOT NULL PRIMARY KEY,
  фам VARCHAR2(50),
  имя VARCHAR2(50),
  адрес VARCHAR2(50),
  дата_рожд DATE
  )
/
CREATE TABLE заказы(
  id_зак CHAR(4) NOT NULL PRIMARY KEY,
  id_кн CHAR(4) NOT NULL REFERENCES книги(id_кн),
  id_чит CHAR(4) NOT NULL REFERENCES читатели(id_чит),
  дата_зак DATE,
  срок DATE, 
  дата_возвр DATE
  )
/

INSERT INTO темы VALUES ('01','Моделирование');
INSERT INTO темы VALUES ('02','Администрирование');
INSERT INTO темы VALUES ('03','Логика');
INSERT INTO темы VALUES ('04','Алгорифмы');
INSERT INTO темы VALUES ('05','Интерация');

INSERT INTO книги VALUES ('11','MySQL',TO_DATE('17/02/1995', 'dd/mm/yyyy'), 340, '01');
INSERT INTO книги VALUES ('12','phpMyAdmin',TO_DATE('20/03/1993', 'dd/mm/yyyy'), 580, '02');
INSERT INTO книги VALUES ('13','Logice',TO_DATE('10/04/1992', 'dd/mm/yyyy'), 250, '03');
INSERT INTO книги VALUES ('14','Matematica',TO_DATE('12/09/1891', 'dd/mm/yyyy'), 300, '04');
INSERT INTO книги VALUES ('15','Java',TO_DATE('02/01/1985', 'dd/mm/yyyy'), 150, '05');

INSERT INTO авторы VALUES ('911','Шинкарюк','Боря');
INSERT INTO авторы VALUES ('912','Салагор','Никита');
INSERT INTO авторы VALUES ('913','Китичук','Славик');
INSERT INTO авторы VALUES ('914','Бырла','Коля');
INSERT INTO авторы VALUES ('915','Аширов','Ваня');

INSERT INTO авторы_книги VALUES ('11','911');
INSERT INTO авторы_книги VALUES ('12','913');
INSERT INTO авторы_книги VALUES ('13','913');
INSERT INTO авторы_книги VALUES ('14','914');
INSERT INTO авторы_книги VALUES ('15','915');


INSERT INTO читатели VALUES ('341','Урсуленко','Никита','per.Комсомольская дом 2',TO_DATE('07/08/2000', 'dd/mm/yyyy'));
INSERT INTO читатели VALUES ('342','Денувиан','Ион', 'str.Восьмое марта 10', TO_DATE('07/08/1998', 'dd/mm/yyyy'));
INSERT INTO читатели VALUES ('343','Никрутин','Ваня', 'str.Independent 10/1',TO_DATE('07/08/2002', 'dd/mm/yyyy'));
INSERT INTO читатели VALUES ('344','Лебедев','Денис', 'str.CuzaVoda 17/3',TO_DATE('07/08/2005', 'dd/mm/yyyy'));
INSERT INTO читатели VALUES ('345','Колдиневец','Михаил', 'bul.Dacia 10/1',TO_DATE('07/08/2003', 'dd/mm/yyyy'));

INSERT INTO заказы VALUES ('421','11','341',TO_DATE('25/03/2022', 'dd/mm/yyyy'), TO_DATE('25/08/2022', 'dd/mm/yyyy'),TO_DATE('25/04/2022', 'dd/mm/yyyy'));
INSERT INTO заказы VALUES ('422','12','343',TO_DATE('23/05/2022', 'dd/mm/yyyy'), TO_DATE('25/06/2022', 'dd/mm/yyyy'),TO_DATE('24/06/2022', 'dd/mm/yyyy'));
INSERT INTO заказы VALUES ('423','13','343',TO_DATE('21/05/2022', 'dd/mm/yyyy'), TO_DATE('25/11/2022', 'dd/mm/yyyy'),TO_DATE('24/11/2022', 'dd/mm/yyyy'));
INSERT INTO заказы VALUES ('424','14','344',TO_DATE('15/05/2022', 'dd/mm/yyyy'), TO_DATE('25/07/2022', 'dd/mm/yyyy'),TO_DATE('24/07/2022', 'dd/mm/yyyy'));
INSERT INTO заказы VALUES ('425','15','345',TO_DATE('10/05/2022', 'dd/mm/yyyy'), TO_DATE('25/08/2022', 'dd/mm/yyyy'),TO_DATE('24/08/2022', 'dd/mm/yyyy'));