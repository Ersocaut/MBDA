--Mantener Musicos
CREATE OR REPLACE PACKAGE PC_Musico IS
	PROCEDURE AD_Musico(xm_name IN VARCHAR, xborn  IN DATE, xdied IN DATE, xborn_in IN VARCHAR, xliving_in IN VARCHAR);
	PROCEDURE MOD_Musico(xm_no IN NUMBER, xdied IN DATE, xliving_in IN VARCHAR);
	PROCEDURE EL_Musico(xm_no IN NUMBER);
	FUNCTION CO_Musico_Ciudad RETURN SYS_REFCURSOR;
	FUNCTION CO_Musicos_Universidad RETURN XMLTYPE;
	FUNCTION CO_Musicos_Premiados RETURN XMLTYPE;
END PC_Musico;
--Registrar composicion
CREATE OR REPLACE PACKAGE PC_Composition IS
	PROCEDURE AD_Composition(xcomp_date IN DATE, xc_tittle IN VARCHAR, xc_in IN INTEGER);
	PROCEDURE MOD_Composition(xc_no, xc_tittle);
	FUNCTION CO_Composition RETURN SYS_REFCURSOR;
END PC_Composition;