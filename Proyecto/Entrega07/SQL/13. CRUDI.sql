CREATE OR REPLACE PACKAGE BODY PC_Estudiantes AS
	PROCEDURE Ad_estudiantes(xnombre IN VARCHAR,xtipodoc IN VARCHAR,xnumDoc IN NUMBER,xcorreo IN VARCHAR, xFechaIngreso IN DATE,
        xcorreoEci IN VARCHAR, xSemestre IN NUMBER, xcontraseña IN VARCHAR, xDecanatura1 IN NUMBER, xDecanatura2 IN NUMBER, estudios IN XMLTYPE) AS
	BEGIN 
		INSERT INTO Estudiante (nombre,tipodoc,numDoc,correo, fechaIngreso, correoEci, semestre, contraseña, decanatura1, decanatura2) VALUES (xnombre,xtipodoc,xnumDoc,xcorreo, xFechaIngreso, xcorreoEci, xSemestre,  xcontraseña, xDecanatura1, xDecanatura2);
		COMMIT;
	EXCEPTION
		WHEN OTHERS THEN 
        ROLLBACK; 
		raise_application_error(-20101,'Error al Insertar en estudiante');
	END;

	PROCEDURE Mod_estudiantes(xcarne IN NUMBER, xtipoDoc IN VARCHAR, xnumDoc IN NUMBER) AS
    BEGIN
        UPDATE Estudiante SET tipoDoc = xtipoDoc, numDoc = xnumDoc WHERE carne = xcarne;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20415,'Error al modificar');
    END;
    
    PROCEDURE Ad_registra(xIdEstudiante IN NUMBER, xIdGrupo IN NUMBER) AS
    BEGIN 
		INSERT INTO Registra (idEstudiante, idGrupo) VALUES (xIdEstudiante, xIdGrupo);
		COMMIT;
	/*EXCEPTION
		WHEN OTHERS THEN 
        ROLLBACK; 
		raise_application_error(-20101,'Error al Insertar en registra');*/
	END;
    
    PROCEDURE El_registra(xIdEstudiante IN NUMBER, xIdGrupo IN NUMBER) AS
    BEGIN
        DELETE FROM Registra WHERE idEstudiante = xIdEstudiante AND idGrupo = xIdGrupo;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20412,'Error al eliminar');
    END;
    
    FUNCTION Co_estudiante(xnombre IN VARCHAR)
        RETURN SYS_REFCURSOR IS
        infoestu SYS_REFCURSOR;
    BEGIN
        OPEN infoestu FOR
        SELECT students.nombre, students.correoeci as CorreoEstudiante, students.semestre As Semestre, decan.nombre as Decanatura1, students.decanatura2 as Decanatura2 FROM Estudiante Students
		JOIN Decanatura Decan ON (decan.id = students.decanatura1 ) 
            WHERE students.nombre LIKE xnombre;
        RETURN infoestu;
    END;
END PC_Estudiantes;
/
CREATE OR REPLACE PACKAGE BODY PC_Profesores AS
	PROCEDURE Ad_profesores (xnoDoc IN NUMBER,xnombre IN VARCHAR,xtitulo IN VARCHAR,xtipoDoc IN VARCHAR,xcorreoEci IN VARCHAR,xcontraseña IN VARCHAR) AS
	BEGIN 
		INSERT INTO Profesor (noDoc,nombre,titulo,tipoDoc,correoEci,contraseña) VALUES (xnoDoc,xnombre,xtitulo,xtipoDoc,xcorreoEci,xcontraseña);
		COMMIT;
	EXCEPTION
		WHEN OTHERS THEN ROLLBACK; 
		raise_application_error(-20101,'Error al Insertar en profesor');
	END;

	PROCEDURE Mod_profesores(xNoDoc IN NUMBER,xtitulo IN VARCHAR) AS
    BEGIN 
        UPDATE Profesor SET titulo = xTitulo WHERE noDoc = xNoDoc;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN ROLLBACK; 
		raise_application_error(-20101,'Error al actualizar');
    END;
    
	PROCEDURE El_profesores(xNoDoc IN NUMBER) AS 
    BEGIN
        DELETE FROM Profesor WHERE NoDoc = xNoDoc;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20412,'Error al eliminar');
    END;
    FUNCTION Co_profesores(xnombre IN VARCHAR) RETURN SYS_REFCURSOR IS
    infoprofe SYS_REFCURSOR;
    BEGIN
    OPEN infoprofe FOR
        SELECT titulo, nombre, correoeci FROM Profesor
            WHERE nombre LIKE xnombre;
        RETURN infoprofe;
    END;
END PC_Profesores;
/
CREATE OR REPLACE PACKAGE BODY PC_Decanaturas AS
    PROCEDURE Ad_decanaturas(xnombre IN VARCHAR,xidDecano IN NUMBER) IS
	BEGIN 
		INSERT INTO Decanatura (nombre,idDecano) VALUES (xnombre,xidDecano);
		COMMIT;
	EXCEPTION
		WHEN OTHERS THEN ROLLBACK; 
		raise_application_error(-20101,'Error al Insertar en decanatura');
	END;

	PROCEDURE Mod_decanaturas(xid IN NUMBER, xNombre IN VARCHAR, xIdDecano IN NUMBER) IS
    BEGIN 
        UPDATE Decanatura SET nombre = xNombre, idDecano=xIdDecano WHERE id = xid;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN ROLLBACK; 
		raise_application_error(-20101,'Error al actualizar');
    END;
    FUNCTION Co_decanaturas(xnombre in VARCHAR) 
    RETURN SYS_REFCURSOR IS
    infodeca SYS_REFCURSOR;
        BEGIN
        OPEN infodeca FOR
            SELECT decanatura.nombre Decanatura, profesor.nombre Decano FROM Decanatura
		JOIN Profesor ON (idDecano = noDoc)
                WHERE Decanatura.nombre LIKE xnombre;
        RETURN infodeca;
    END;
END PC_Decanaturas;
/
CREATE OR REPLACE PACKAGE BODY PC_Cursos AS
	PROCEDURE Ad_salones(xEdificio IN VARCHAR,xcapacidad IN NUMBER,xnumero IN VARCHAR) AS 
	BEGIN 
		INSERT INTO Salon (edificio, capacidad, numero) VALUES (xEdificio,xcapacidad,xnumero) ;
		COMMIT;
	EXCEPTION
		WHEN OTHERS THEN ROLLBACK; 
		raise_application_error(-20101,'Error al Insertar en salon');
	END;

	PROCEDURE Ad_horario(xhora IN VARCHAR,xdia IN VARCHAR) AS
	BEGIN 
		INSERT INTO Horario (hora, dia) VALUES (xhora,xdia);
		COMMIT;
	EXCEPTION
		WHEN OTHERS THEN ROLLBACK; 
		raise_application_error(-20101,'Error al Insertar en horario');
	END;

	PROCEDURE Ad_Materias(xnombre IN VARCHAR,xsiglas IN VARCHAR, xIdDecanatura IN NUMBER) AS
	BEGIN 
		INSERT INTO Materia(nombre, siglas, idDecanatura) VALUES (xnombre, xsiglas, xIdDecanatura);
		COMMIT;
	EXCEPTION
		WHEN OTHERS THEN ROLLBACK; 
		raise_application_error(-20101,'Error al Insertar en materia');
	END;

	PROCEDURE Ad_cursosextracurriculares(xnombre IN VARCHAR,xsiglase IN VARCHAR) AS
	BEGIN 
		INSERT INTO CursoExtracurricular(nombre,siglasE) VALUES (xnombre,xsiglase);
		COMMIT;
	EXCEPTION
		WHEN OTHERS THEN ROLLBACK; 
		raise_application_error(-20101,'Error al Insertar en curso extracurricular');
	END;

	PROCEDURE Ad_grupo(xnumeroGrupo IN NUMBER,xperiodo IN VARCHAR,xaño IN NUMBER,xcupos IN NUMBER,xinscritos IN NUMBER,xcuposdisponibles IN NUMBER, 
    xSiglasMateria IN VARCHAR, xSiglasExtra IN VARCHAR, xIdProfe IN NUMBER) AS
	BEGIN 
		INSERT INTO grupo(numeroGrupo,periodo,año,cupos,inscritos,cuposdisponibles, siglasMateria, siglasExtra, idProfe) VALUES(xnumeroGrupo,xperiodo,xaño,xcupos,xinscritos,xcuposdisponibles, xSiglasMateria, xSiglasExtra, xIdProfe);
		COMMIT;
	EXCEPTION
		WHEN OTHERS THEN ROLLBACK; 
		raise_application_error(-20101,'Error al Insertar en grupo');
	END;

    PROCEDURE Ad_SeDictaEn(xIdSalon IN NUMBER, xIdGrupo IN NUMBER) AS
    BEGIN 
		INSERT INTO SeDictaEn(IdSalon, IdGrupo) VALUES (xIdSalon, xIdGrupo);
		COMMIT;
	EXCEPTION
		WHEN OTHERS THEN ROLLBACK; 
		raise_application_error(-20101,'Error al Insertar en SeDictaEn');
	END;
    
    PROCEDURE Ad_SeOcupaPor(xIdSalon IN NUMBER, xIdHorario IN NUMBER) AS
    BEGIN 
		INSERT INTO SeOcupaPor(IdSalon, IdHorario) VALUES (xIdSalon, xIdHorario);
		COMMIT;
	EXCEPTION
		WHEN OTHERS THEN ROLLBACK; 
		raise_application_error(-20101,'Error al Insertar en SeOcupaPor');
	END;
    
    PROCEDURE Ad_Tiene(xIdHorario IN NUMBER, xIdGrupo IN NUMBER) AS
    BEGIN 
		INSERT INTO Tiene(IdHorario, IdGrupo) VALUES (xIdHorario, xIdGrupo);
		COMMIT;
	EXCEPTION
		WHEN OTHERS THEN ROLLBACK; 
		raise_application_error(-20101,'Error al Insertar en Tiene');
	END;
    
    PROCEDURE Mod_SeDictaEn(xid IN NUMBER, xIdSalon IN NUMBER) AS
    BEGIN 
        UPDATE SeDictaEn SET idSalon = XidSalon WHERE id = xid;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN ROLLBACK; 
		raise_application_error(-20101,'Error al actualizar');
    END;
    
    PROCEDURE Mod_Tiene(xid IN NUMBER, xIdHorario IN NUMBER) AS
    BEGIN 
        UPDATE Tiene SET idHorario = XidHorario WHERE id = xid;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN ROLLBACK; 
		raise_application_error(-20101,'Error al actualizar');
    END;

	PROCEDURE Mod_salones(xid IN NUMBER,xcapacidad IN NUMBER,xnumero IN NUMBER) AS
    BEGIN 
        UPDATE Salon SET capacidad = xcapacidad, numero=xnumero WHERE id = xid;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN ROLLBACK; 
		raise_application_error(-20101,'Error al actualizar');
    END;
	
    PROCEDURE Mod_horarios(xid IN NUMBER,xhora IN VARCHAR,xdia IN VARCHAR) AS
    BEGIN 
        UPDATE Horario SET hora = xhora, dia=xdia WHERE id = xid;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN ROLLBACK; 
		raise_application_error(-20101,'Error al actualizar');
    END;
    
	PROCEDURE Mod_materias(xid IN NUMBER, xnombre IN VARCHAR,xsiglas IN VARCHAR) AS
    BEGIN 
        UPDATE Materia SET nombre = xnombre, siglas=xsiglas WHERE id = xid;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN ROLLBACK; 
		raise_application_error(-20101,'Error al actualizar');
    END;
    
	PROCEDURE Mod_grupos(xid IN NUMBER, xnumeroGrupo IN NUMBER,xcupos IN NUMBER,xinscritos IN NUMBER,xcuposdisponibles IN NUMBER) AS
    BEGIN 
        UPDATE Grupo SET numeroGrupo = xnumeroGrupo, cupos=xcupos, inscritos=xinscritos, cuposdisponibles= xcuposdisponibles WHERE id = xid;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN ROLLBACK; 
		raise_application_error(-20101,'Error al actualizar');
    END;
    
    PROCEDURE El_SeDictaEn(xId IN NUMBER) AS
    BEGIN
        DELETE FROM SeDictaEn WHERE id = xid;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20412,'Error al eliminar');
    END;
    
    PROCEDURE El_Tiene(xId IN NUMBER) AS
    BEGIN
        DELETE FROM Tiene WHERE id = xid;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20412,'Error al eliminar');
    END;
    
	PROCEDURE El_cursosextarcurriculares(xid IN NUMBER) AS
    BEGIN
        DELETE FROM CursoExtracurricular WHERE id = xid;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20412,'Error al eliminar');
    END;
    
	PROCEDURE El_grupo(xid IN NUMBER) AS
    BEGIN
        DELETE FROM Grupo WHERE id= xid;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20412,'Error al eliminar');
    END;
    
END PC_Cursos;
/
