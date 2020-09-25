CREATE OR REPLACE PACKAGE BODY PA_Decano IS
	PROCEDURE Ad_Materias(xnombre IN VARCHAR,xsiglas IN VARCHAR, xIdDecanatura IN NUMBER) IS
    BEGIN
            PC_Cursos.Ad_Materias(xnombre, xsiglas, xIdDecanatura);
    END;
	PROCEDURE Ad_grupo(xnumeroGrupo IN NUMBER,xperiodo IN VARCHAR,xaño IN NUMBER,xcupos IN NUMBER,xinscritos IN NUMBER,xcuposdisponibles IN NUMBER, xSiglasMateria IN VARCHAR, xSiglasExtra IN VARCHAR, xIdProfe IN NUMBER) IS
    BEGIN
        PC_Cursos.Ad_grupo(xnumeroGrupo, xperiodo, xaño,xcupos, xinscritos, xcuposdisponibles, xsiglasmateria, xsiglasextra, xidprofe);
    END;
	PROCEDURE Ad_SeDictaEn(xIdSalon IN NUMBER, xIdGrupo IN NUMBER) IS 
    BEGIN
        PC_Cursos.Ad_SeDictaEn(xIdSalon, xIdGrupo);
    END;
    PROCEDURE Ad_SeOcupaPor(xIdSalon IN NUMBER, xIdHorario IN NUMBER) IS
    BEGIN
        PC_Cursos.Ad_SeOcupaPor(xIdSalon, xIdHorario);
    END;
    PROCEDURE Ad_Tiene(xIdHorario IN NUMBER, xIdGrupo IN NUMBER) IS
    BEGIN
        PC_Cursos.Ad_Tiene(xIdHorario, xIdGrupo);
    END;
    PROCEDURE Mod_SeDictaEn(xid IN NUMBER, xIdSalon IN NUMBER) IS
    BEGIN
        PC_Cursos.Mod_SeDictaEn(xid, xIdSalon);
    END;
    PROCEDURE Mod_Tiene(xid IN NUMBER, xIdHorario IN NUMBER) IS
    BEGIN
        PC_Cursos.Mod_Tiene(xid, xIdHorario);
    END;
	PROCEDURE Mod_materias(xid IN NUMBER, xnombre IN VARCHAR,xsiglas IN VARCHAR) IS
    BEGIN
        PC_Cursos.Mod_materias(xid, xnombre,xsiglas);
    END;
	PROCEDURE Mod_grupos(xid IN NUMBER, xnumeroGrupo IN NUMBER,xcupos IN NUMBER,xinscritos IN NUMBER,xcuposdisponibles IN NUMBER) IS
    BEGIN
        PC_Cursos.Mod_grupos(xid, xnumeroGrupo,xcupos,xinscritos,xcuposdisponibles);
    END;
    PROCEDURE El_SeDictaEn(xId IN NUMBER) IS
    BEGIN
        PC_Cursos.El_SeDictaEn(xId);
    END;
    PROCEDURE El_Tiene(xId IN NUMBER) IS
    BEGIN
        PC_Cursos.El_Tiene(xId);
    END;
	PROCEDURE El_grupo(xid IN NUMBER) IS
    BEGIN
        PC_Cursos.El_grupo(xid);
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
    FUNCTION Co_profesores(xnombre IN VARCHAR) RETURN SYS_REFCURSOR IS
    infoprofe SYS_REFCURSOR;
    BEGIN
    OPEN infoprofe FOR
        SELECT titulo, nombre, correoeci FROM Profesor
            WHERE nombre LIKE xnombre;
        RETURN infoprofe;
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
END PA_Decano;
/

CREATE OR REPLACE PACKAGE BODY PA_EmpleadoRegistro IS
    PROCEDURE Ad_estudiantes(xnombre IN VARCHAR,xtipodoc IN VARCHAR,xnumDoc IN NUMBER,xcorreo IN VARCHAR, xFechaIngreso IN DATE,
        xcorreoEci IN VARCHAR, xSemestre IN NUMBER, xcontraseña IN VARCHAR, xDecanatura1 IN NUMBER, xDecanatura2 IN NUMBER, estudios IN XMLTYPE) IS
    BEGIN
        PC_Estudiantes.Ad_Estudiantes(xnombre,xtipodoc,xnumDoc,xcorreo, xFechaIngreso, xcorreoEci, xSemestre,  xcontraseña, xDecanatura1, xDecanatura2, estudios);
    END;
    PROCEDURE Ad_salones(xEdificio IN VARCHAR,xcapacidad IN NUMBER,xnumero IN VARCHAR) IS
    BEGIN
        PC_Cursos.Ad_salones(xEdificio,xcapacidad,xnumero);
    END;
	PROCEDURE Ad_horario(xhora IN VARCHAR,xdia IN VARCHAR) IS
    BEGIN
        PC_Cursos.Ad_horario(xhora,xdia);
    END;
    PROCEDURE Mod_estudiantes(xcarne IN NUMBER, xtipoDoc IN VARCHAR, xnumDoc IN NUMBER) IS
    BEGIN
        PC_Estudiantes.Mod_estudiantes(xcarne, xtipoDoc, xnumDoc);
    END;
    PROCEDURE Mod_salones(xid IN NUMBER,xcapacidad IN NUMBER,xnumero IN NUMBER) IS
    BEGIN
        PC_Cursos.Mod_salones(xid,xcapacidad,xnumero);
    END;
	PROCEDURE Mod_horarios(xid IN NUMBER,xhora IN VARCHAR,xdia IN VARCHAR) IS
    BEGIN
        PC_Cursos.Mod_horarios(xid,xhora,xdia);
    END;
END PA_EmpleadoRegistro;
/

CREATE OR REPLACE PACKAGE BODY PA_Estudiante IS
    PROCEDURE Ad_registra(xIdEstudiante IN NUMBER, xIdGrupo IN NUMBER) IS 
        BEGIN
            PC_Estudiantes.Ad_registra(xidEstudiante, xidGrupo);
        END;
    PROCEDURE El_registra(xIdEstudiante IN NUMBER, xIdGrupo IN NUMBER) IS
        BEGIN
            PC_Estudiantes.El_Registra(xidestudiante, xidGrupo);
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
    FUNCTION Co_profesores(xnombre IN VARCHAR) RETURN SYS_REFCURSOR IS
    infoprofe SYS_REFCURSOR;
    BEGIN
    OPEN infoprofe FOR
        SELECT titulo, nombre, correoeci FROM Profesor
            WHERE nombre LIKE xnombre;
        RETURN infoprofe;
    END;
END PA_Estudiante;
/

CREATE OR REPLACE PACKAGE BODY PA_ViceRectoria IS
    PROCEDURE Ad_profesores (xnoDoc IN NUMBER,xnombre IN VARCHAR,xtitulo IN VARCHAR,xtipoDoc IN VARCHAR,xcorreoEci IN VARCHAR,xcontraseña IN VARCHAR) IS
    BEGIN
        PC_Profesores.Ad_profesores(xnoDoc,xnombre,xtitulo,xtipoDoc,xcorreoEci,xcontraseña);
    END;
    PROCEDURE Ad_decanaturas(xnombre IN VARCHAR,xidDecano IN NUMBER) IS
    BEGIN 
        PC_Decanaturas.Ad_decanaturas(xnombre,xidDecano);
    END;
    PROCEDURE Mod_decanaturas(xid IN NUMBER, xNombre IN VARCHAR, xIdDecano IN NUMBER) IS
    BEGIN 
        PC_Decanaturas.Mod_decanaturas(xid,xnombre,xidDecano);
    END;
	PROCEDURE Mod_profesores(xNoDoc IN NUMBER,xtitulo IN VARCHAR) IS
    BEGIN
        PC_Profesores.Mod_profesores(xnoDoc,xtitulo);
    END;
	PROCEDURE El_profesores(xNoDoc IN NUMBER) IS
    BEGIN
        PC_Profesores.El_profesores(xnoDoc);
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
    FUNCTION Co_profesores(xnombre IN VARCHAR) RETURN SYS_REFCURSOR IS
    infoprofe SYS_REFCURSOR;
    BEGIN
    OPEN infoprofe FOR
        SELECT titulo, nombre, correoeci FROM Profesor
            WHERE nombre LIKE xnombre;
        RETURN infoprofe;
    END;
END PA_ViceRectoria;
/

CREATE OR REPLACE PACKAGE BODY PA_BienestarUniversitario IS
    PROCEDURE Ad_cursosextracurriculares(xnombre IN VARCHAR,xsiglase IN VARCHAR) IS
    BEGIN
        PC_Cursos.Ad_cursosextracurriculares(xnombre,xsiglase);
    END;
    PROCEDURE Ad_grupo(xnumeroGrupo IN NUMBER,xperiodo IN VARCHAR,xaño IN NUMBER,xcupos IN NUMBER,xinscritos IN NUMBER,xcuposdisponibles IN NUMBER, xSiglasMateria IN VARCHAR, xSiglasExtra IN VARCHAR, xIdProfe IN NUMBER) IS
    BEGIN
        PC_Cursos.Ad_grupo(xnumeroGrupo, xperiodo, xaño,xcupos, xinscritos, xcuposdisponibles, xsiglasmateria, xsiglasextra, xidprofe);
    END;
	PROCEDURE Ad_SeDictaEn(xIdSalon IN NUMBER, xIdGrupo IN NUMBER) IS 
    BEGIN
        PC_Cursos.Ad_SeDictaEn(xIdSalon, xIdGrupo);
    END;
    PROCEDURE Ad_SeOcupaPor(xIdSalon IN NUMBER, xIdHorario IN NUMBER) IS
    BEGIN
        PC_Cursos.Ad_SeOcupaPor(xIdSalon, xIdHorario);
    END;
    PROCEDURE Ad_Tiene(xIdHorario IN NUMBER, xIdGrupo IN NUMBER) IS
    BEGIN
        PC_Cursos.Ad_Tiene(xIdHorario, xIdGrupo);
    END;
    PROCEDURE Mod_SeDictaEn(xid IN NUMBER, xIdSalon IN NUMBER) IS
    BEGIN
        PC_Cursos.Mod_SeDictaEn(xid, xIdSalon);
    END;
    PROCEDURE Mod_Tiene(xid IN NUMBER, xIdHorario IN NUMBER) IS
    BEGIN
        PC_Cursos.Mod_Tiene(xid, xIdHorario);
    END;
	PROCEDURE Mod_materias(xid IN NUMBER, xnombre IN VARCHAR,xsiglas IN VARCHAR) IS
    BEGIN
        PC_Cursos.Mod_materias(xid, xnombre,xsiglas);
    END;
	PROCEDURE Mod_grupos(xid IN NUMBER, xnumeroGrupo IN NUMBER,xcupos IN NUMBER,xinscritos IN NUMBER,xcuposdisponibles IN NUMBER) IS
    BEGIN
        PC_Cursos.Mod_grupos(xid, xnumeroGrupo,xcupos,xinscritos,xcuposdisponibles);
    END;
    PROCEDURE El_SeDictaEn(xId IN NUMBER) IS
    BEGIN
        PC_Cursos.El_SeDictaEn(xId);
    END;
    PROCEDURE El_Tiene(xId IN NUMBER) IS
    BEGIN
        PC_Cursos.El_Tiene(xId);
    END;
	PROCEDURE El_grupo(xid IN NUMBER) IS
    BEGIN
        PC_Cursos.El_grupo(xid);
    END;
    PROCEDURE El_cursosextarcurriculares(xid IN NUMBER) IS
    BEGIN
        PC_Cursos.El_cursosextarcurriculares(xid);
    END;
END PA_BienestarUniversitario;
/