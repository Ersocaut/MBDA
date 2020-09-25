--TABLAS

--CRUD ROJO
CREATE TABLE ESTUDIANTE(
    carne NUMBER(7) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    tipoDoc VARCHAR(2) NOT NULL,
    numDoc NUMBER(10) NOT NULL,
    correo VARCHAR(60) NOT NULL,
    fechaIngreso DATE NOT NULL,
    correoECI VARCHAR(60) NOT NULL,
    semestre NUMBER(2) NOT NULL,
    contraseña VARCHAR(30) NOT NULL,
    decanatura1 NUMBER(2) NOT NULL,
    decanatura2 NUMBER(2)
);

CREATE TABLE REGISTRA(
    idEstudiante NUMBER(7),
    idGrupo NUMBER(7)
);

--CRUD VERDE
CREATE TABLE MATERIA(
    id NUMBER(3) NOT NULL,
    nombre VARCHAR(40) NOT NULL,
    siglas VARCHAR(6) NOT NULL,
    idDecanatura NUMBER(2)
);

CREATE TABLE GRUPO(
    id NUMBER(4)NOT NULL,
    numeroGrupo NUMBER(3) NOT NULL,
    periodo VARCHAR(1) NOT NULL,
    año NUMBER(4) NOT NULL,
    cupos NUMBER(2) NOT NULL,
    inscritos NUMBER(2) NOT NULL,
    cuposDisponibles NUMBER(2) NOT NULL,
    siglasMateria VARCHAR(6),
    siglasExtra VARCHAR(6),
    idProfe NUMBER(10) 
);

CREATE TABLE HORARIO(
    id NUMBER(2) NOT NULL,
    hora VARCHAR(5) NOT NULL,
    dia VARCHAR(9) NOT NULL
);

CREATE TABLE TIENE(
    idHorario NUMBER(2),
    idGrupo NUMBER(4)
);

CREATE TABLE SALON(
    id NUMBER(4) NOT NULL,
    edificio VARCHAR(40) NOT NULL,
    capacidad NUMBER(4) NOT NULL,
    numero VARCHAR(6) NOT NULL
);

CREATE TABLE SEOCUPAPOR(
    idsalon NUMBER(4),
    idhorario NUMBER(2)
 );
 
 CREATE TABLE SEDICTAEN(
    idSalon NUMBER(4),
    idGrupo NUMBER(7)
 );
 
--CRUD AZUL OSCURO
CREATE TABLE CURSOEXTRACURRICULAR(
    id NUMBER(4) NOT NULL,
    nombre VARCHAR(40) NOT NULL,
    siglasE VARCHAR(6) NOT NULL
);

--CRUD AMARILLO
CREATE TABLE DECANATURA(
    id NUMBER(2) NOT NULL,
    nombre VARCHAR(40) NOT NULL,
    idDecano NUMBER(10)
 );

--CRUD AZUL CLARO
CREATE TABLE PROFESOR(
    noDoc NUMBER(10) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    titulo VARCHAR(30) NOT NULL,
    tipoDoc VARCHAR(2) NOT NULL,
    correoEci VARCHAR(50) NOT NULL,
    contraseña VARCHAR(30) NOT NULL
 );
