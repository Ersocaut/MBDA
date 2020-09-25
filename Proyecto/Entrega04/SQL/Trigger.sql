--INSERT
CREATE OR REPLACE TRIGGER TR_Est_Auto
BEFORE INSERT
ON Estudiante
FOR EACH ROW
DECLARE
maxiC INTEGER;
BEGIN
    SELECT MAX(carne) INTO maxiC FROM Estudiante;
    :new.carne := maxiC + 1;
END TR_Est_auto;

CREATE OR REPLACE TRIGGER TR_Pro_Titu
BEFORE INSERT
ON Profesor
FOR EACH ROW
BEGIN
    IF :new.titulo IS NULL THEN
    raise_application_error(-2600,'Una persona sin ningún titulo profesional no puede ser profesor');
    END IF;
END TR_Pro_Titu;

--UPDATE
create or replace TRIGGER TR_CUPOS_DISP
BEFORE UPDATE
ON Grupo
FOR EACH ROW
BEGIN
    IF :old.cuposdisponibles > 0 THEN
    :new.cuposdisponibles := :old.cuposdisponibles - 1;
    ELSE raise_application_error(-2600, 'No hay cupos disponibles en este grupo');
    END IF;
END TR_CUPOS_DISP;

CREATE OR REPLACE TRIGGER TR_Est_NoCamb
BEFORE UPDATE
ON Estudiante
FOR EACH ROW
BEGIN
    IF :new.carne <> :old.carne THEN
    raise_application_error(-2600,'No se puede modificar el numero de carné');
    END IF;
END TR_Est_NoCamb;
--BORRAR
create or replace TRIGGER TR_Materia_borrar
BEFORE DELETE
ON Decanatura
FOR EACH ROW
BEGIN
    raise_application_error(-2601, 'No se puede eliminar una materia');
END TR_Materia_borrar;

create or replace TRIGGER TR_Decanatura_borrar
BEFORE DELETE
ON Decanatura
FOR EACH ROW
BEGIN
    raise_application_error(-2600, 'No se puede eliminar una decanatura');
END TR_Decanatura_borrar;