DROP TABLE cursuri
/
DROP TABLE profesori
/

DROP TABLE didactic
/

CREATE TABLE profesori(
  id_prof CHAR(4) NOT NULL PRIMARY KEY,
  nume VARCHAR2(50),
  prenume VARCHAR2(50),
  patronimic VARCHAR2(50),
  academic_degree VARCHAR2(50),
  grad_didactic VARCHAR2(5),
  experience CHAR(4)
  )
/

CREATE TABLE cursuri(
  id_curs CHAR(2) NOT NULL PRIMARY KEY,
  titlu_curs VARCHAR2(50),
  credite NUMBER(2)
  )
/

CREATE TABLE didactic(
  id_prof CHAR(4) NOT NULL,
  id_curs CHAR(2) NOT NULL,
  grupa VARCHAR2(4)
  )
/

-- Добавление проффесра
INSERT INTO profesori VALUES ('001', 'Bogdar','Ion','Petrovici','PHD','Prof','8' );
INSERT INTO profesori VALUES ('002', 'Ganu','Vanea','Semion','DOS','Lect','6' );
INSERT INTO profesori VALUES ('003', 'Burlaca','Alexandr','Liudmila','PHD','Prof','20' );
INSERT INTO profesori VALUES ('004', 'Sincaru','Boris','Constantin','DOS','Lect','15' );


-- Добавление Предмета
INSERT INTO cursuri VALUES ('15', 'Matematica', '45' );
INSERT INTO cursuri VALUES ('21', 'Logica', '90' );
INSERT INTO cursuri VALUES ('18', 'Informatica', '30' );
INSERT INTO cursuri VALUES ('08', 'Modelare', '60' );

-- Нагрузка
INSERT INTO didactic VALUES ('001','15','M12');
INSERT INTO didactic VALUES ('002','21','M22');
INSERT INTO didactic VALUES ('003','18','M32');
INSERT INTO didactic VALUES ('004','08','M42');

COMMIT;








