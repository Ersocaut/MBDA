
/*
			Unicas
*/
--estudiante
ALTER TABLE ESTUDIANTE
ADD CONSTRAINT UK_Estudiante_numdoc
UNIQUE (numdoc);

ALTER TABLE ESTUDIANTE
ADD CONSTRAINT UK_Estudiante_correoeci
UNIQUE (correoeci);

ALTER TABLE ESTUDIANTE
ADD CONSTRAINT UK_Estudiante_correo
UNIQUE (correo);

--Decanatura
ALTER TABLE DECANATURA
ADD CONSTRAINT UK_dec_nombre
UNIQUE (nombre);

--MATERIA
ALTER TABLE MATERIA
ADD CONSTRAINT UK_mat_nombre
UNIQUE (nombre);

ALTER TABLE MATERIA
ADD CONSTRAINT UK_mat_siglas
UNIQUE (siglas);

--CURSO EXTRA
ALTER TABLE CursoExtracurricular
ADD CONSTRAINT UK_CE_siglasE
UNIQUE (siglasE);

--Profesor
ALTER TABLE PROFESOR
ADD CONSTRAINT UK_Pro_correoeci
UNIQUE (correoECI);

--grupo
ALTER TABLE GRUPO
ADD CONSTRAINT UK_tupla_grupo
UNIQUE (numeroGrupo, periodo, año, siglasMateria,siglasExtra);

--Horario
ALTER TABLE Horario
ADD CONSTRAINT UK_tupla_horario
UNIQUE (hora, dia);