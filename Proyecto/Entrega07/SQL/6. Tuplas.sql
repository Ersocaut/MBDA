--Tuplas

ALTER TABLE Grupo
ADD CONSTRAINT CH_Tupla_Grupo
CHECK (
    cupos - inscritos >= 0
);

ALTER TABLE Grupo
ADD CONSTRAINT CH_XOR_Grupo
CHECK(
    (siglasMateria IS NOT NULL AND siglasExtra IS NULL) OR (siglasMateria IS NULL AND siglasExtra IS NOT NULL)
);

--tuplas unicas
--grupo
ALTER TABLE GRUPO
ADD CONSTRAINT UK_tupla_grupo
UNIQUE (numeroGrupo, periodo, año, siglasMateria,siglasExtra);

--Horario
ALTER TABLE Horario
ADD CONSTRAINT UK_tupla_horario
UNIQUE (hora, dia);

--Materia
ALTER TABLE Materia
ADD CONSTRAINT UK_Tupla_materia
UNIQUE (nombre, siglas);

--Curso extra
ALTER TABLE CursoExtracurricular
ADD CONSTRAINT UK_Tupla_CE
UNIQUE (nombre, siglasE);

--Profesor
ALTER TABLE Profesor
ADD CONSTRAINT UK_Tuple_Profesor
UNIQUE (noDoc, tipoDoc);

--Salon
ALTER TABLE Salon
ADD CONSTRAINT UK_Tupla_Salon
UNIQUE (edificio, numero);

--Estudiante
ALTER TABLE Estudiante
ADD CONSTRAINT UK_Tupla_Estudiante
UNIQUE (tipoDoc, numDoc);