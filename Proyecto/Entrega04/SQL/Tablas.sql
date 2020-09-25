/* 
		TABLAS
*/
--CRUD ROJO
CREATE TABLE ESTUDIANTE(
    id NUMBER(7) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    tipoDoc VARCHAR(2) NOT NULL,
    numDoc NUMBER(10) NOT NULL,
    correo VARCHAR(60) NOT NULL,
    fechaIngreso DATE,
    correoECI VARCHAR(60) NOT NULL,
    semestre NUMBER(2) NOT NULL,
    contraseña VARCHAR(30) NOT NULL,
    idDecanatura NUMBER(2)NOT NULL
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
    id VARCHAR(16) NOT NULL,
    cupos NUMBER(2),
    inscritos NUMBER(2),
    cuposDisponibles NUMBER(2),
    SiglasMateria VARCHAR(6),
    SiglasExtra VARCHAR(6),
    idProfe NUMBER(10)
);

CREATE TABLE HORARIO(
    id NUMBER(2) NOT NULL,
    hora VARCHAR(5) NOT NULL,
    dia VARCHAR(9) NOT NULL
);

CREATE TABLE SALON(
    id NUMBER(4) NOT NULL,
    edificio VARCHAR(40) NOT NULL,
    capacidad NUMBER(4) NOT NULL,
    nombre VARCHAR(6) NOT NULL
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
    id NUMBER(4),
    nombre VARCHAR(40),
    siglasE VARCHAR(6)
);

--CRUD AMARILLO
CREATE TABLE DECANATURA(
    id NUMBER(2) NOT NULL,
    nombre VARCHAR(40) NOT NULL,
    id_Decano NUMBER(10) NOT NULL
 );

--CRUD AZUL CLARO
CREATE TABLE PROFESOR(
    no_Doc NUMBER(10) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    titulo VARCHAR(30),
    tipo_Doc VARCHAR(2) NOT NULL,
    correo_Eci VARCHAR(50) NOT NULL,
    contraseña VARCHAR(30) NOT NULL
 );
