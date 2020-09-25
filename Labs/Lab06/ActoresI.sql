CREATE OR REPLACE PACKAGE BODY PA_PARTICIPANTE IS 
    PROCEDURE Ad_Registro(xnumero IN NUMBER, xfecha IN DATE, xtiempo IN NUMBER, xposicion IN NUMBER, xdificultad IN VARCHAR, xcomentario IN VARCHAR, xrevision IN XMLTYPE) IS
    BEGIN
        PC_REGISTROS.Ad_Registro(xnumero, xfecha, xtiempo, xposicion, xdificultad, xcomentario, xrevision);
    END;
    
    PROCEDURE Ad_Carrera(xid IN NUMBER, xnombre IN VARCHAR, xpais IN VARCHAR, xcategoria IN NUMBER, xperiodicidad IN VARCHAR)IS
    BEGIN
        PC_CARRERAS.Ad_Carrera(xid, xnombre, xpais, xcategoria, xperiodicidad);
    END;
    
    PROCEDURE Ad_Punto(xid IN NUMBER, xorden IN NUMBER, xid_carrera IN NUMBER, xnombre IN VARCHAR, xtipo IN VARCHAR, xdistancia IN NUMBER, xtiempo_limite IN NUMBER)IS
    BEGIN
        PC_CARRERAS.Ad_Punto(xid, xorden, xid_carrera, xnombre, xtipo, xdistancia, xtiempo_limite);
    END;
    
    PROCEDURE Mod_Carrera(xid IN NUMBER, xpais IN VARCHAR, xcategoria IN VARCHAR) IS
    BEGIN
        PC_CARRERAS.Mod_Carrera(xid, xpais, xcategoria);
    END;
    
    PROCEDURE Mod_Punto(xid IN NUMBER, xtipo IN VARCHAR) IS
    BEGIN
        PC_CARRERAS.Mod_Punto(xid, xtipo);
    END;
    
    PROCEDURE El_Carrera(xid IN NUMBER) IS
    BEGIN
        PC_CARRERAS.El_Carrera(xid);
    END;
    
END PA_PARTICIPANTE;
/

CREATE OR REPLACE PACKAGE BODY PA_ADMINISTRADOR IS
    PROCEDURE Ad_Registro(xnumero IN NUMBER, xfecha IN DATE, xtiempo IN NUMBER, xposicion IN NUMBER, xdificultad IN VARCHAR, xcomentario IN VARCHAR, xrevision IN XMLTYPE)IS
    BEGIN
        PC_REGISTROS.Ad_Registro(xnumero, xfecha, xtiempo, xposicion, xdificultad, xcomentario, xrevision);
    END;
    
    PROCEDURE Ad_Foto(xid IN NUMBER, xno_reg IN NUMBER, xarchivo IN VARCHAR) IS
    BEGIN
        PC_REGISTROS.Ad_Foto(xid, xno_reg, xarchivo);
    END;
    
    PROCEDURE Mod_Registro(xnumero IN NUMBER, xcomentario IN VARCHAR, xrevision IN XMLTYPE) IS
    BEGIN
        PC_REGISTROS.Mod_Registro(xnumero, xcomentario, xrevision);
    END;
    
    PROCEDURE Mod_Foto(xid IN NUMBER, xno_reg IN NUMBER, xarchivo IN VARCHAR) IS
    BEGIN
        PC_REGISTROS.Mod_Foto(xid, xno_reg, xarchivo);
    END;
    
    PROCEDURE El_Foto(xid IN NUMBER) IS
    BEGIN
        PC_REGISTROS.El_Foto(xid);
    END;
    
END PA_ADMINISTRADOR;
/