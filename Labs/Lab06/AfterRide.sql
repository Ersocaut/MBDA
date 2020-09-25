--CRUD AZUL
CREATE TABLE Miembro (
    id INTEGER NOT NULL  ,
    idt VARCHAR(2) NOT NULL,
    idn NUMBER(20) NOT NULL,
    pais VARCHAR(20) NOT NULL,
    correo VARCHAR(30)
);
CREATE TABLE Persona (
    id INTEGER NOT NULL, 
    nombre VARCHAR(50) NOT NULL,
    id_miembro INTEGER NOT NULL
);
CREATE TABLE Ciclista (
    id INTEGER NOT NULL,
    id_persona INTEGER NOT NULL,
    nacimiento DATE NOT NULL,
    categoria VARCHAR(1)
);
CREATE TABLE Empresa (
    id INTEGER NOT NULL,
    razon_social VARCHAR(30),
    id_miembro INTEGER NOT NULL,
    id_representante INTEGER
);
CREATE TABLE EsOrganizador (
    id_emp INTEGER,
    id_ver INTEGER
);

--CRUD Morado
CREATE TABLE Registro (
    numero INTEGER NOT NULL,
    fecha DATE NOT NULL,
    tiempo INTEGER,
    posicion INTEGER,
    revision VARCHAR(60),
    dificultad VARCHAR(1),
    comentario VARCHAR(20),
    id_segmento VARCHAR(20),
    id_ciclista INTEGER
);

CREATE TABLE Foto (
    id INTEGER NOT NULL,
    no_reg INTEGER NOT NULL,
    archivo VARCHAR(50)
);

--CRUD Rojo
CREATE TABLE Segmento (
    nombre VARCHAR(20) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    id_inicio NUMBER(3),
    id_fin NUMBER(3), 
    id_version INTEGER
);
CREATE TABLE Version (
    id INTEGER NOT NULL ,
    id_carrera INTEGER NOT NULL,
    nombre VARCHAR(20) NOT NULL ,
    fecha DATE
);

--CRUD Amarillo
CREATE TABLE Punto (
    id INTEGER NOT NULL,
    orden INTEGER,
    id_carrera INTEGER NOT NULL,
    nombre VARCHAR(10),
    tipo VARCHAR(1),
    distancia REAL,
    tiempo_limite INTEGER
);
CREATE TABLE Carrera (
    id INTEGER NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    pais VARCHAR(50) NOT NULL,
    categoria VARCHAR(1),
    periodicidad VARCHAR(1)
    );
CREATE TABLE PropiedadDe (
    id_miembro INTEGER,
    id_carrera INTEGER,
    porcentaje INTEGER
);
CREATE TABLE Participa (
    id_ci INTEGER  ,
    id_ver INTEGER 
);

--Primarias
ALTER TABLE Carrera 
ADD CONSTRAINT PK_Carrera
PRIMARY KEY (ID);

ALTER TABLE Ciclista 
ADD CONSTRAINT PK_Ciclista
PRIMARY KEY (ID);

ALTER TABLE Empresa 
ADD CONSTRAINT PK_Empresa
PRIMARY KEY (ID);
    
ALTER TABLE EsOrganizador
ADD CONSTRAINT PK_EsOrganizador
PRIMARY KEY (ID_EMP, ID_VER);

ALTER TABLE Miembro
ADD CONSTRAINT PK_Miembro
PRIMARY KEY (ID);

ALTER TABLE Participa 
ADD CONSTRAINT PK_Parrticipa
PRIMARY KEY (ID_CI, ID_VER);
    
ALTER TABLE Persona 
ADD CONSTRAINT PK_Persona
PRIMARY KEY (ID);

ALTER TABLE PropiedadDe 
ADD CONSTRAINT PK_PropiedadDe
PRIMARY KEY (ID_MIEMBRO, ID_CARRERA);
    
ALTER TABLE Punto 
ADD CONSTRAINT PK_Punto
PRIMARY KEY (ID);

ALTER TABLE Registro 
ADD CONSTRAINT PK_Registro
PRIMARY KEY (numero);

ALTER TABLE Foto 
ADD CONSTRAINT PK_Foto
PRIMARY KEY (id);
    
ALTER TABLE Segmento 
ADD CONSTRAINT PK_Segmento
PRIMARY KEY (nombre);
    
ALTER TABLE Version 
ADD CONSTRAINT PK_Version
PRIMARY KEY (ID);

--Unicas
ALTER TABLE Registro 
ADD CONSTRAINT UK_comentario
UNIQUE (comentario);
    
--Foraneas
ALTER TABLE Persona 
ADD CONSTRAINT FK_id_miembro
FOREIGN KEY (id_miembro) REFERENCES Miembro (ID);

ALTER TABLE Ciclista 
ADD CONSTRAINT FK_id_persona
FOREIGN KEY (id_persona) REFERENCES Persona (ID);

ALTER TABLE Propiedadde 
ADD CONSTRAINT FK_id_miembro_prop
FOREIGN KEY (id_miembro) REFERENCES Miembro (ID);
        
ALTER TABLE Propiedadde 
ADD CONSTRAINT FK_id_carrera
FOREIGN KEY (id_carrera) REFERENCES Carrera (id);

ALTER TABLE Segmento 
ADD CONSTRAINT FK_id_inicio
FOREIGN KEY (id_inicio) REFERENCES Punto (id);

ALTER TABLE Segmento
ADD CONSTRAINT FK_id_fin
FOREIGN KEY (id_fin) REFERENCES Punto (id);

ALTER TABLE Registro 
ADD CONSTRAINT FK_id_segmento
FOREIGN KEY (id_segmento) REFERENCES Segmento (nombre);
        
ALTER TABLE Segmento 
ADD CONSTRAINT FK_id_version_seg
FOREIGN KEY (id_version) REFERENCES Version (id);

ALTER TABLE Registro 
ADD CONSTRAINT FK_id_ciclista
FOREIGN KEY (id_ciclista) REFERENCES Ciclista (ID);

ALTER TABLE Foto 
ADD CONSTRAINT FK_no_reg
FOREIGN KEY (no_reg) REFERENCES Registro (numero);

ALTER TABLE EsOrganizador 
ADD CONSTRAINT FK_id_emp
FOREIGN KEY (id_emp) REFERENCES Empresa (id);

ALTER TABLE EsOrganizador 
ADD CONSTRAINT FK_id_ver
FOREIGN KEY (id_ver) REFERENCES Version (id);
ALTER TABLE Participa 
ADD CONSTRAINT FK_id_ci
FOREIGN KEY (id_ci) REFERENCES Ciclista (id);

ALTER TABLE Participa 
ADD CONSTRAINT FK_id_ver_part
FOREIGN KEY (id_ver) REFERENCES Version (id);

ALTER TABLE Version 
ADD CONSTRAINT FK_id_carrera_version
FOREIGN KEY (id_carrera) REFERENCES Carrera (id);

ALTER TABLE Punto 
ADD CONSTRAINT FK_id_carrera_punto
FOREIGN KEY (id_carrera) REFERENCES Carrera (id);

ALTER TABLE Empresa 
ADD CONSTRAINT FK_id_miembro_emp
FOREIGN KEY (id_miembro) REFERENCES Miembro (ID);

ALTER TABLE Empresa 
ADD CONSTRAINT FK_id_representante
FOREIGN KEY (id_representante) REFERENCES Persona(ID);

--CHECK's DE TIPO
ALTER TABLE Miembro 
ADD CONSTRAINT CH_Id_Miembro
CHECK (
    id>=1 AND id<=99999
);

ALTER TABLE Miembro 
ADD CONSTRAINT CH_IdT
CHECK (
    idt IN ('CC', 'CE', 'NT')
);

ALTER TABLE Miembro 
ADD CONSTRAINT CH_Idn
CHECK (
    idn>=1111111111 
);

ALTER TABLE Miembro 
ADD CONSTRAINT CH_pais
CHECK (
    pais = UPPER(pais) 
);

ALTER TABLE Miembro 
ADD CONSTRAINT CH_correo
CHECK (
    correo LIKE '%@%' AND correo NOT LIKE '%@%@%'
);

ALTER TABLE Persona 
ADD CONSTRAINT  CH_Id_Persona
CHECK (
    id>=1 AND id<=99999
);

ALTER TABLE Persona 
ADD CONSTRAINT  CH_Id_P_Miembro
CHECK (
    id_Miembro>=1 AND id_miembro<=99999
);
        
ALTER TABLE Ciclista 
ADD CONSTRAINT  CH_Id_Ciclista
CHECK (
    id>=1 AND id<=99999
);

ALTER TABLE Ciclista 
ADD CONSTRAINT  CH_Id_CPersona
CHECK (
    id_persona>=1 AND id_persona<=99999
);

ALTER TABLE Ciclista 
ADD CONSTRAINT  CH_categoria
CHECK (
    categoria>=1 AND categoria<=5
);

ALTER TABLE Empresa 
ADD CONSTRAINT  CH_Id_Empresa
CHECK (
    id>=1 AND id<=99999
);
        
ALTER TABLE Punto 
ADD CONSTRAINT  CH_TipoPunto
CHECK (
    tipo in ('P', 'L', 'H', 'A', 'M', 'V', 'C')
);

ALTER TABLE Punto 
ADD CONSTRAINT  CH_TiempoLimite
CHECK (
    tiempo_limite>0
);

ALTER TABLE Punto 
ADD CONSTRAINT  CH_Distancia
CHECK (
    distancia>1
);
       
ALTER TABLE Carrera 
ADD CONSTRAINT  CH_codigo
CHECK (
    id >= 1
);

ALTER TABLE Carrera 
ADD CONSTRAINT  CH_CarreraCategoria
CHECK (
    categoria>=1 AND categoria<=5
);

ALTER TABLE Carrera
ADD CONSTRAINT CH_pais_carrera
CHECK (
    pais = UPPER(pais) 
);
        
ALTER TABLE Segmento 
ADD CONSTRAINT  CH_TipoSegmento
CHECK (
    tipo IN ('C', 'L', 'M')
);
      
ALTER TABLE Registro 
ADD CONSTRAINT  CH_Numero
CHECK ( 
    numero>=1 AND numero<=99999
);

ALTER TABLE Registro 
ADD CONSTRAINT  CH_Tiempo
CHECK ( 
    tiempo>0
);

ALTER TABLE Registro 
ADD CONSTRAINT  CH_Dificultad
CHECK (
    dificultad IN ('A', 'M', 'B')
);

ALTER TABLE Foto 
ADD CONSTRAINT  CH_archivo
CHECK (
    archivo LIKE 'www.%' AND (archivo LIKE '%.gif' OR archivo LIKE '%.pdf')
);

--Borrar tablas y constraints al tiempo
--XTablas
DROP TABLE CARRERA CASCADE CONSTRAINTS;
DROP TABLE CICLISTA CASCADE CONSTRAINTS;
DROP TABLE EMPRESA CASCADE CONSTRAINTS;
DROP TABLE ESORGANIZADOR CASCADE CONSTRAINTS;
DROP TABLE FOTO CASCADE CONSTRAINTS;
DROP TABLE MIEMBRO CASCADE CONSTRAINTS;
DROP TABLE PARTICIPA CASCADE CONSTRAINTS;
DROP TABLE PERSONA CASCADE CONSTRAINTS;
DROP TABLE PROPIEDADDE CASCADE CONSTRAINTS;
DROP TABLE PUNTO CASCADE CONSTRAINTS;
DROP TABLE REGISTRO CASCADE CONSTRAINTS;
DROP TABLE SEGMENTO CASCADE CONSTRAINTS;
DROP TABLE VERSION CASCADE CONSTRAINTS;