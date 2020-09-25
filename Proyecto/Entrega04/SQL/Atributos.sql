/*
			CHECKS
*/
ALTER TABLE Estudiante
ADD CONSTRAINT CH_Est_TDoc
CHECK (
    TIPODOC IN ('CE','CC','PS')
);

ALTER TABLE Estudiante
ADD CONSTRAINT CH_Est_Sem
CHECK (
    SEMESTRE BETWEEN 1 AND 10
);

ALTER TABLE Estudiante
ADD CONSTRAINT CH_Est_NDOC
CHECK (
    NUMDOC BETWEEN 1000000000 AND 1999999999
);

ALTER TABLE Profesor
ADD CONSTRAINT CH_Pro_TDoc
CHECK (
    tipoDoc IN ( 'CE','CC','PS' )
);

ALTER TABLE Profesor
ADD CONSTRAINT CH_Pro_NDoc
CHECK (
    noDoc BETWEEN 1000000000 AND 1999999999
);

ALTER TABLE Estudiante
ADD CONSTRAINT CH_Est_Carne
CHECK (
    carne BETWEEN 2000000 AND 2999999
);

ALTER TABLE Grupo
ADD CONSTRAINT CH_Grupo_Periodo
CHECK (
    periodo IN ('1', '2', 'I')
);

ALTER TABLE Grupo
ADD CONSTRAINT CH_Grupo_Cupos
CHECK (
    cupos > 0
);

ALTER TABLE Grupo
ADD CONSTRAINT CH_Grupo_Inscritos
CHECK (
    cupos >= 0
);

ALTER TABLE Grupo
ADD CONSTRAINT CH_Grupo_Disponibles
CHECK (
    cuposDisponibles >= 0
);

ALTER TABLE Horario
ADD CONSTRAINT CH_Horario_Dia
CHECK (
    dia IN ('Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado')
);

ALTER TABLE Salon
ADD CONSTRAINT CH_Salon_Edificio
CHECK (
    edificio IN ('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'L')
);

ALTER TABLE Salon
ADD CONSTRAINT CH_Salon_Capacidad
CHECK (
    capacidad > 5
);