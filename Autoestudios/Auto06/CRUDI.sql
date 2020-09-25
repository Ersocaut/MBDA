--Mantener Musicos
CREATE OR REPLACE PACKAGE BODY PC_MUSICO IS
	--Registrar
	PROCEDURE AD_Musico(xm_name IN VARCHAR, xborn  IN DATE, xdied IN DATE, xborn_in IN VARCHAR, xliving_in IN VARCHAR) IS
	BEGIN
		INSERT INTO musician(m_name,born,died,born_in,living_in) VALUES (xm_name,xborn,xdied,xborn_in,xliving_in);
		COMMIT;
	EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			raise_application_error(-20101,'Error al Insertar en musician');
	END;
	--Modificar
	PROCEDURE MOD_Musico(xm_no IN NUMBER, xdied IN DATE, xliving_in IN VARCHAR) IS
	BEGIN
		UPDATE  musician SET died= xdied, living_in= xliving_in WHERE m_no= xm_no;
		COMMIT;
	EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			raise_application_error(-20103,'Error al modificar en musician');
	END;
	--Eliminar
	PROCEDURE EL_Musico(xm_no IN NUMBER) IS
	BEGIN
		DELETE FROM musician WHERE (xm_no=m_no);
		COMMIT;
	EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			raise_application_error(-20102,'Error al eliminar en musician');
	END;
	--Faltan consultas
	FUNCTION CO_Musico_Ciudad  RETURN SYS_REFCURSOR IS CiudadMusico SYS_REFCURSOR;
	BEGIN
	END;
	FUNCTION CO_Musicos_Universidad RETURN XMLTYPE IS CO_XML XMLTYPE;
	BEGIN
	END;
	FUNCTION CO_Musicos_Premiados RETURN XMLTYPE IS CON_XML XMLTYPE;
	BEGIN
	END;
END PC_Musico;


--Registrar composicion
CREATE OR REPLACE PACKAGE PC_Composition IS
	--Registrar
	PROCEDURE AD_Composition(xcomp_date IN DATE, xc_tittle IN VARCHAR, xc_in IN INTEGER) IS
	BEGIN
		INSERT INTO musician (comp_date, c_tittle, c_in) VALUES  (xcomp_date IN DATE, xc_tittle IN VARCHAR, xc_in IN INTEGER);
		COMMIT;
	EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			raise_application_error(-20101,'Error al Insertar en composicion');
	END;
	--Modificar
	PROCEDURE MOD_Composition(xc_no, xc_tittle) IS
	BEGIN
		UPDATE  Composition SET c_tittle= xc_tittle, living_in= xliving_in WHERE c_no= xc_no;
		COMMIT;
	EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			raise_application_error(-20103,'Error al modificar en composicion');
	END;
	--Falta consulta
	FUNCTION CO_Composition RETURN SYS_REFCURSOR IS Compo SYS_REFCURSOR;
	BEGIN
	END;
END PC_Composition;