--Unicas
ALTER TABLE ESTUDIANTE
ADD CONSTRAINT UK_Estudiante_numdoc
UNIQUE (numdoc);
ALTER TABLE ESTUDIANTE
ADD CONSTRAINT UK_Estudiante_correoeci
UNIQUE (correoeci);