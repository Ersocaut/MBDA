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



CREATE OR REPLACE TRIGGER TR_Registro_numero_fecha
    BEFORE 
    INSERT 
    ON Registro
    FOR EACH ROW
DECLARE
    nNumero INTEGER;
BEGIN 
     :new.fecha := sysdate;
     SELECT COUNT(*)+1 INTO nNumero FROM Registro;
	:new.numero := nNumero;
END TR_Registro_numero_fecha;
/
INSERT INTO Carrera VALUES(1,'Carrera','COLOMBIA',null,1);
INSERT INTO Version VALUES(2,1,1,null);
INSERT INTO Punto VALUES (1,null,1,'inicio',null,null,null);
INSERT INTO PUNTO VALUES (2,null,1,'fin',null,null,null);
INSERT INTO Segmento VALUES(1,'C',1,2,1);
INSERT INTO Segmento VALUES(2,'C',1,2,1);
INSERT INTO Miembro VALUES (1, 'CC', 12345679098767, 'COLOMBIA', 'j@mail.com');
INSERT INTO Miembro VALUES (2, 'CC', 1234567898767, 'COLOMBIA', 'l@mail.com');
INSERT INTO Miembro VALUES (3, 'CC', 1234500000006, 'COLOMBIA', 'f@mail.com');
INSERT INTO Miembro VALUES (6, 'CC', 1234500000021, 'COLOMBIA', 'hy@mail.com');
INSERT INTO Miembro VALUES (7, 'CC', 1234500000098, 'COLOMBIA', 'sdh@mail.com');
INSERT INTO Miembro VALUES (8, 'CC', 1234500004306, 'COLOMBIA', 'hdj@mail.com');
INSERT INTO Persona VALUES (1, 'Juan', 1);
INSERT INTO Persona VALUES (2, 'Leo', 2);
INSERT INTO Persona VALUES (3, 'Fabian', 3);
INSERT INTO Ciclista VALUES (1, 1, to_date('2000/01/22', 'yyyy/mm/dd'), 1);
INSERT INTO Ciclista VALUES (2, 2, to_date('2000/12/10', 'yyyy/mm/dd'), 1);
INSERT INTO Ciclista VALUES (3, 3, to_date('2001/04/02', 'yyyy/mm/dd'), 1);
--TriggerOk
INSERT INTO Registro VALUES (99,null,10,1,12,'M',1,1,1);
--TriggerNoOk
--Solo no dejaría insertar un dato si alguno no es valido, el trigger acomoda fecha y id


--Intento hacer el de  Solo se pueden registrar 
--resultados de ciclistas que hayan participado 
--en la version de la carrera a la que pertenece el segmento.

/*CREATE OR REPLACE TRIGGER TR_Registro_Segmento_Version
BEFORE INSERT ON Registro
FOR EACH ROW
DECLARE
    nNumero INTEGER;
    mNum INTEGER;
BEGIN 
    SELECT COUNT(*) INTO nNumero FROM Registro r
    INNER JOIN Ciclista c ON (c.id=r.id_ciclista)
    INNER JOIN Participa p ON (p.id_ci=c.id)
    INNER JOIN Version v ON (v.id=p.id_ver)
    INNER JOIN Carrera ca ON (ca.id=v.id_carrera)
    WHERE c.id=old.id_ciclista;
    
    
	:new.numero := nNumero;
END TR_Registro_Segmento_Version;
*/
--Un ciclista solo puede tener un único registro en un segmento. 
CREATE OR REPLACE TRIGGER TR_Cicli_Seg
    BEFORE
    INSERT 
    ON Registro
    FOR EACH ROW
DECLARE 
    n INTEGER;
BEGIN
    SELECT COUNT(*) INTO n 
    FROM Registro
    WHERE :new.id_ciclista = id_ciclista and :new.id_segmento = id_segmento;
    IF n = 1 THEN 
        raise_application_error(-2614,'Ya hay un registro');
    END IF;
END TR_Cicli_Seg;
/
--TriggerOk
INSERT INTO Registro VALUES (99,null,10,1,12,'M','un poco dificil',2,1);
--TriggerNoOk
INSERT INTO Registro VALUES (99,null,10,1,12,'M','un poco facil',2,1);
--Los datos a modificar son la revisión, las fotos y el comentario.
CREATE OR REPLACE TRIGGER TR_Modificar_Registro
    BEFORE 
    UPDATE 
    ON Registro
BEGIN
    IF UPDATING('numero') THEN 
        raise_application_error(-26000,'Alguno de los datos no permite modificaciones');
    END IF;
    IF UPDATING('fecha') THEN 
        raise_application_error(-26000,'Alguno de los datos no permite modificaciones');
    END IF;
    IF UPDATING('tiempo') THEN 
        raise_application_error(-26000,'Alguno de los datos no permite modificaciones');
    END IF;
    IF UPDATING('posicion') THEN 
        raise_application_error(-26000,'Alguno de los datos no permite modificaciones');
    END IF;
    IF UPDATING('dificultad') THEN 
        raise_application_error(-26000,'Alguno de los datos no permite modificaciones');
    END IF;
    IF UPDATING('id_segmento') THEN 
        raise_application_error(-26000,'Alguno de los datos no permite modificaciones');
    END IF;
    IF UPDATING('id_ciclista') THEN 
        raise_application_error(-26000,'Alguno de los datos no permite modificaciones');
    END IF;
END TR_Modificar_Registro;
/
--TriggerOk
UPDATE REGISTRO SET comentario = 'Interesante'
WHERE numero = 1;
--TriggerNoOk
UPDATE REGISTRO SET comentario = 'Incomoda',dificultad = 'A'
WHERE numero = 1;
--Sólo es posible eliminar un registro si no ha pasado mas de un dia desde que se creo. 
CREATE OR REPLACE TRIGGER TR_Borra_R
    BEFORE 
    DELETE 
    ON Registro
DECLARE 
    nu INTEGER;
BEGIN 
    SELECT (sysdate - fecha) INTO nu FROM Registro;
    IF nu > 1 THEN 
        raise_application_error(-26000,'Alguno de los datos no permite modificaciones');
    END IF; 
END TR_Borra_R;
/
--TriggerOk y NoOk
DELETE FROM Registro WHERE numero = 1;
--No pueden quedar dos ciclistas con la misma posición.
CREATE OR REPLACE TRIGGER TR_posicion
    BEFORE 
    INSERT 
    ON Registro
    FOR EACH ROW
DECLARE
    nNumero INTEGER;
BEGIN 
     SELECT COUNT(*) INTO nNumero FROM Registro
     WHERE :new.posicion = posicion AND :new.id_segmento = id_segmento;
	 IF nnumero>1 THEN 
        raise_application_error(-26000,'Alguno de los datos no permite modificaciones');
     END IF;
END TR_posicion;
/
--TriggerOk
INSERT INTO Registro VALUES (88,null,15,1,12,'M','Ldfgh',1,2);
--TriggerNoOk
INSERT INTO Registro VALUES (89,null,15,1,12,'M','Ldfgh',1,1);
--MANTENER CARRERA
--El orden se debe generar automáticamente 1 …
CREATE OR REPLACE TRIGGER TR_Carrera_numero
    BEFORE 
    INSERT ON Carrera
    FOR EACH ROW
DECLARE
    nNumero INTEGER;
BEGIN 
    SELECT COUNT(*)+1 INTO nNumero 
    FROM Carrera;
	:new.id := nNumero;
END TR_Carrera_numero;
/
--Los únicos datos que se pueden modificar son el tipo y la duración.
CREATE OR REPLACE TRIGGER TR_Upd_Punto
    BEFORE 
    UPDATE ON Punto
BEGIN 
    IF UPDATING(id) THEN
        raise_application_error(-26000,'Alguno de los datos no permite modificaciones');
    END IF;
    IF UPDATING(orden) THEN
        raise_application_error(-26000,'Alguno de los datos no permite modificaciones');
    END IF;
    IF UPDATING(id_carrera) THEN
        raise_application_error(-26000,'Alguno de los datos no permite modificaciones');
    END IF;
    IF UPDATING(nombre) THEN
        raise_application_error(-26000,'Alguno de los datos no permite modificaciones');
    END IF;
    IF UPDATING(distancia) THEN
        raise_application_error(-26000,'Alguno de los datos no permite modificaciones');
    END IF;
END TR_Upd_Punto;
/

--Los puntos no se pueden eliminar
CREATE OR REPLACE TRIGGER TR_Delete_Punto
    BEFORE 
    DELETE 
    ON Punto
BEGIN
    IF DELETING THEN
        raise_application_error(-26000,'No se puede eliminar');
    END IF;
END TR_Delete_Punto;
/

--No se puede modificar el tipo de partida y sólo puede existir un punto de llegada.
CREATE OR REPLACE TRIGGER TR_Upd_segm
    BEFORE 
    UPDATE 
    ON Segmento
BEGIN 
    IF UPDATING('id_inicio') THEN
        raise_application_error(-26000,'Alguno de los datos no permite modificaciones');
    END IF;
END TR_Upd_segm;
/

--No se puede modificar el id del segmento y la referencia a version
CREATE OR REPLACE TRIGGER TR_Upd_segm_id
    BEFORE 
    UPDATE 
    ON Segmento
BEGIN 
    IF UPDATING('id') THEN
        raise_application_error(-26000,'Alguno de los datos no permite modificaciones');
    END IF;
    IF UPDATING('id_version') THEN
        raise_application_error(-26000,'Alguno de los datos no permite modificaciones');
    END IF;
END TR_Upd_segm_id;
/

--Registrar version
--Version tiene consecutivo y fecha automaticos 
CREATE OR REPLACE TRIGGER TR_Version_numero_fe
    BEFORE 
    INSERT 
    ON Version
    FOR EACH ROW
DECLARE
    nNumero INTEGER;
BEGIN 
    SELECT COUNT(*)+1 INTO nNumero FROM Version;
    :new.fecha := sysdate; 
	:new.id := nNumero;
END TR_Version_numero_fe;
/

--No se puede modificar el id del version y referencia a carrera
CREATE OR REPLACE TRIGGER TR_Upd_version
    BEFORE 
    UPDATE 
    ON Version
BEGIN 
    IF UPDATING('id') THEN
        raise_application_error(-26000,'Alguno de los datos no permite modificaciones');
    END IF;
    IF UPDATING('id_carrera') THEN
        raise_application_error(-26000,'Alguno de los datos no permite modificaciones');
    END IF;
END TR_Upd_version;
/

--No se puede eliminar una version 
CREATE OR REPLACE TRIGGER TR_Delete_Version
    BEFORE 
    DELETE 
    ON Version
BEGIN
    IF DELETING THEN
        raise_application_error(-26000,'No se puede eliminar');
    END IF;
END TR_Delete_Version;
/

--Mantener miembros
--Ciclista tiene consecutivo automatico
CREATE OR REPLACE TRIGGER TR_Ciclista_id
    BEFORE 
    INSERT 
    ON Ciclista
    FOR EACH ROW
DECLARE
    nNumero INTEGER;
BEGIN 
    SELECT COUNT(*)+1 INTO nNumero FROM Ciclista;
	:new.id := nNumero;
END TR_Ciclista_id;
/

--Ciclista tiene consecutivo automatico
CREATE OR REPLACE TRIGGER TR_Ciclista_cat
    BEFORE 
    INSERT 
    ON Ciclista
    FOR EACH ROW
    WHEN (new.categoria IS NULL)
BEGIN 
	:new.categoria := 1;
END TR_Ciclista_cat;
/

--Empresa tiene consecutivo automatico
CREATE OR REPLACE TRIGGER TR_Empresa_id
    BEFORE 
    INSERT 
    ON Empresa
    FOR EACH ROW
DECLARE
    nNumero INTEGER;
BEGIN 
    SELECT COUNT(*)+1 INTO nNumero FROM Empresa;
	:new.id := nNumero;
END TR_Empresa_id;
/

--Miembro tiene consecutivo automatico
CREATE OR REPLACE TRIGGER TR_Miembro_id
    BEFORE 
    INSERT 
    ON Miembro
    FOR EACH ROW
DECLARE
    nNumero INTEGER;
BEGIN 
    SELECT COUNT(*)+1 INTO nNumero FROM Miembro;
	:new.id := nNumero;
END TR_Miembro_id;
/

--Persona tiene consecutivo automatico
CREATE OR REPLACE TRIGGER TR_Persona_id
    BEFORE 
    INSERT 
    ON Persona
    FOR EACH ROW
DECLARE
    nNumero INTEGER;
BEGIN 
    SELECT COUNT(*)+1 INTO nNumero FROM Persona;
	:new.id := nNumero;
END TR_Persona_id;
/


--Borrar trigger's
--XDisparadores
DROP TRIGGER TR_Registro_numero_fecha;
DROP TRIGGER TR_Cicli_Seg;
DROP TRIGGER TR_Modificar_Registro;
DROP TRIGGER TR_Borra_R;
DROP TRIGGER TR_posicion;
DROP TRIGGER TR_Carrera_numero;
DROP TRIGGER TR_Upd_Punto;
DROP TRIGGER TR_Delete_Punto;
DROP TRIGGER TR_Upd_segm;
DROP TRIGGER TR_Upd_segm_id;
DROP TRIGGER TR_Version_numero_fe;
DROP TRIGGER TR_Upd_version;
DROP TRIGGER TR_Delete_Version;
DROP TRIGGER TR_Ciclista_id;
DROP TRIGGER TR_Ciclista_cat;
DROP TRIGGER TR_Empresa_id;
DROP TRIGGER TR_Miembro_id;
DROP TRIGGER TR_Persona_id;


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