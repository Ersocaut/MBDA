--Trigger

CREATE OR REPLACE TRIGGER TR_Auto_Est
BEFORE INSERT
ON Estudiante
FOR EACH ROW
DECLARE
maxiC INTEGER;
BEGIN
    SELECT COUNT(*) INTO maxiC FROM Estudiante;
    :new.carne := maxiC + 2000001;
END TR_Est_auto;
/

CREATE OR REPLACE TRIGGER TR_Auto_Grupo
BEFORE INSERT
ON Grupo
FOR EACH ROW
DECLARE 
maxiG INTEGER;
BEGIN
    SELECT COUNT(*)+1 INTO maxiG FROM Grupo;
    :new.id := maxiG;
END TR_Auto_Grupo;
/

CREATE OR REPLACE TRIGGER TR_Auto_SeDictaEn
BEFORE INSERT
ON SeDictaEn
FOR EACH ROW
DECLARE 
maxiG INTEGER;
BEGIN
    SELECT COUNT(*)+1 INTO maxiG FROM SeDictaEn;
    :new.id := maxiG;
END TR_Auto_SeDictaEn;
/

CREATE OR REPLACE TRIGGER TR_Auto_SeOcupaPor
BEFORE INSERT
ON SeOcupaPor
FOR EACH ROW
DECLARE 
maxiG INTEGER;
BEGIN
    SELECT COUNT(*)+1 INTO maxiG FROM SeOcupaPor;
    :new.id := maxiG;
END TR_Auto_SeOcupaPor;
/

CREATE OR REPLACE TRIGGER TR_Auto_Tiene
BEFORE INSERT
ON Tiene
FOR EACH ROW
DECLARE 
maxiG INTEGER;
BEGIN
    SELECT COUNT(*)+1 INTO maxiG FROM Tiene;
    :new.id := maxiG;
END TR_Auto_Tiene;
/

CREATE OR REPLACE TRIGGER TR_Auto_Horario
BEFORE INSERT
ON Horario
FOR EACH ROW
DECLARE
maxiH INTEGER;
BEGIN
    SELECT COUNT(*)+1 INTO maxiH FROM Horario;
    :new.id := maxiH;
END TR_Auto_Horario;
/

CREATE OR REPLACE TRIGGER TR_Auto_Salon
BEFORE INSERT
ON Salon
FOR EACH ROW
DECLARE
maxiS INTEGER;
BEGIN
    SELECT COUNT(*)+1 INTO maxiS FROM Salon;
    :new.id := MaxiS;
END TR_Auto_Salon;
/

CREATE OR REPLACE TRIGGER TR_Auto_Materia
BEFORE INSERT
ON Materia
FOR EACH ROW
DECLARE
maxiM INTEGER;
BEGIN
    SELECT COUNT(*)+1 INTO maxiM FROM Materia;
    :new.id := MaxiM;
END TR_Auto_Materia;
/

CREATE OR REPLACE TRIGGER TR_Auto_Extra
BEFORE INSERT
ON CursoEXTRACURRICULAR
FOR EACH ROW
DECLARE
maxiE INTEGER;
BEGIN
    SELECT COUNT(*)+1 INTO maxiE FROM CursoExtracurricular;
    :new.id := maxiE;
END TR_Auto_Extra;
/


CREATE OR REPLACE TRIGGER TR_Auto_Decanatura
BEFORE INSERT
ON Decanatura
FOR EACH ROW
DECLARE maxiD INTEGER;
BEGIN
    SELECT COUNT(*)+1 INTO maxiD FROM Decanatura;
    :new.id := maxiD;
END TR_Auto_Decanatura;
/