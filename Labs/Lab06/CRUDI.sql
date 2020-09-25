CREATE OR REPLACE PACKAGE BODY PC_CARRERAS AS
    PROCEDURE Ad_Carrera(xid IN NUMBER, xnombre IN VARCHAR, xpais IN VARCHAR, xcategoria IN NUMBER, xperiodicidad IN VARCHAR) AS
    BEGIN 
		INSERT INTO Carrera(id, nombre, pais, categoria, periodicidad) VALUES (xid, xnombre, xpais, xcategoria, xperiodicidad);
		COMMIT;
	EXCEPTION
		WHEN OTHERS THEN 
        ROLLBACK; 
		raise_application_error(-20101,'Error al Insertar en carrera');
	END;
    
    PROCEDURE Ad_Punto(xid IN NUMBER, xorden IN NUMBER, xid_carrera IN NUMBER, xnombre IN VARCHAR, xtipo IN VARCHAR, xdistancia IN NUMBER, xtiempo_limite IN NUMBER) AS
    BEGIN 
		INSERT INTO Punto(id, orden, id_carrera, nombre, tipo, distancia, tiempo_limite) VALUES (xid, xorden, xid_carrera, xnombre, xtipo, xdistancia, xtiempo_limite);
		COMMIT;
	EXCEPTION
		WHEN OTHERS THEN 
        ROLLBACK; 
		raise_application_error(-20101,'Error al Insertar en punto');
	END;
    
    PROCEDURE Mod_Carrera(xid IN NUMBER, xpais IN VARCHAR, xcategoria IN VARCHAR)  AS
    BEGIN
        UPDATE Carrera SET pais = xpais, categoria = xcategoria WHERE id=xid;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20415,'Error al modificar');
    END;
    
    PROCEDURE Mod_Punto(xid IN NUMBER, xtipo IN VARCHAR) AS
    BEGIN
        UPDATE Punto SET tipo = xtipo WHERE id=xid;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20415,'Error al modificar');
    END;
    
    PROCEDURE El_Carrera(xid IN NUMBER) AS 
    BEGIN
        DELETE FROM Carrera WHERE id = xid;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20412,'Error al eliminar');
    END;
    
    FUNCTION Co_PuntosCarrera 
        RETURN SYS_REFCURSOR IS
        INF_PuntosCarrera SYS_REFCURSOR;
    BEGIN
        OPEN INF_PuntosCarrera FOR
            SELECT PUNTO.NOMBRE, PUNTO.TIPO, PUNTO.DISTANCIA, PUNTO.TIEMPO_LIMITE 
            FROM PUNTO
                JOIN CARRERA ON (CARRERA.ID=PUNTO.ID)
            WHERE CARRERA.NOMBRE='Giro de Italia'
            ORDER BY PUNTO.DISTANCIA ASC;
        RETURN INF_PuntosCarrera;
    END;
END PC_CARRERAS;

/

CREATE OR REPLACE PACKAGE BODY PC_REGISTROS AS
    PROCEDURE Ad_Registro(xnumero IN NUMBER, xfecha IN DATE, xtiempo IN NUMBER, xposicion IN NUMBER, xdificultad IN VARCHAR, xcomentario IN VARCHAR, xrevision IN XMLTYPE) AS
    BEGIN 
		INSERT INTO Registro(numero, fecha, tiempo, posicion, dificultad, comentario, revision) VALUES (xnumero, xfecha, xtiempo, xposicion, xdificultad, xcomentario, xrevision);
		COMMIT;
	EXCEPTION
		WHEN OTHERS THEN 
        ROLLBACK; 
		raise_application_error(-20101,'Error al Insertar en registro');
	END;
    
    PROCEDURE Ad_Foto(xid IN NUMBER, xno_reg IN NUMBER, xarchivo IN VARCHAR) AS
    BEGIN 
		INSERT INTO Foto(id, no_reg, archivo) VALUES (xid, xno_reg, xarchivo);
		COMMIT;
	EXCEPTION
		WHEN OTHERS THEN 
        ROLLBACK; 
		raise_application_error(-20101,'Error al Insertar en fotos');
	END;
    
    PROCEDURE Mod_Registro(xnumero IN NUMBER, xcomentario IN VARCHAR, xrevision IN XMLTYPE) AS
    BEGIN
        UPDATE Registro SET comentario = xcomentario, revision = xrevision WHERE numero=xnumero;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20415,'Error al modificar');
    END;
    
    PROCEDURE Mod_Foto(xid IN NUMBER, xno_reg IN NUMBER, xarchivo IN VARCHAR) AS
    BEGIN
        UPDATE Foto SET no_reg = xno_reg, archivo = xarchivo WHERE id=xid;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20415,'Error al modificar');
    END;
    
    PROCEDURE El_Registro(xnumero IN NUMBER) AS 
    BEGIN
        DELETE FROM Registro WHERE numero = xnumero;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20412,'Error al eliminar');
    END;
    
    PROCEDURE El_Foto(xid IN NUMBER) AS 
    BEGIN
        DELETE FROM Foto WHERE id = xid;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20412,'Error al eliminar');
    END;
    
    FUNCTION Co_SegmentoDescenso
        RETURN SYS_REFCURSOR IS 
    INF_SegmentoDescenso SYS_REFCURSOR;
    BEGIN
        OPEN INF_SegmentoDescenso FOR
            SELECT *
            FROM REGISTRO;
        RETURN inf_segmentodescenso;
    END;
END PC_REGISTROS;

/
