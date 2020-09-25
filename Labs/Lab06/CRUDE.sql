CREATE OR REPLACE PACKAGE PC_CARRERAS AS
    PROCEDURE Ad_Carrera(xid IN NUMBER, xnombre IN VARCHAR, xpais IN VARCHAR, xcategoria IN NUMBER, xperiodicidad IN VARCHAR);
    PROCEDURE Ad_Punto(xid IN NUMBER, xorden IN NUMBER, xid_carrera IN NUMBER, xnombre IN VARCHAR, xtipo IN VARCHAR, xdistancia IN NUMBER, xtiempo_limite IN NUMBER);
    PROCEDURE Mod_Carrera(xid IN NUMBER, xpais IN VARCHAR, xcategoria IN VARCHAR) ;
    PROCEDURE Mod_Punto(xid IN NUMBER, xtipo IN VARCHAR);
    PROCEDURE El_Carrera(xid IN NUMBER);
    FUNCTION Co_PuntosCarrera RETURN SYS_REFCURSOR;
END PC_CARRERAS;

/

CREATE OR REPLACE PACKAGE PC_REGISTROS AS
    PROCEDURE Ad_Registro(xnumero IN NUMBER, xfecha IN DATE, xtiempo IN NUMBER, xposicion IN NUMBER, xdificultad IN VARCHAR, xcomentario IN VARCHAR, xrevision IN XMLTYPE);
    PROCEDURE Ad_Foto(xid IN NUMBER, xno_reg IN NUMBER, xarchivo IN VARCHAR);
    PROCEDURE Mod_Registro(xnumero IN NUMBER, xcomentario IN VARCHAR, xrevision IN XMLTYPE);
    PROCEDURE Mod_Foto(xid IN NUMBER, xno_reg IN NUMBER, xarchivo IN VARCHAR) ;
    PROCEDURE El_Registro(xnumero IN NUMBER);
    PROCEDURE El_Foto(xid IN NUMBER);
    FUNCTION Co_SegmentoDescenso RETURN SYS_REFCURSOR;
END PC_REGISTROS;

/
