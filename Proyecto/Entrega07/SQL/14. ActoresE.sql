CREATE OR REPLACE PACKAGE PA_Decano IS
	PROCEDURE Ad_Materias(xnombre IN VARCHAR,xsiglas IN VARCHAR, xIdDecanatura IN NUMBER) ;
	PROCEDURE Ad_grupo(xnumeroGrupo IN NUMBER,xperiodo IN VARCHAR,xa�o IN NUMBER,xcupos IN NUMBER,xinscritos IN NUMBER,xcuposdisponibles IN NUMBER, xSiglasMateria IN VARCHAR, xSiglasExtra IN VARCHAR, xIdProfe IN NUMBER);
	PROCEDURE Ad_SeDictaEn(xIdSalon IN NUMBER, xIdGrupo IN NUMBER);
    PROCEDURE Ad_SeOcupaPor(xIdSalon IN NUMBER, xIdHorario IN NUMBER);
    PROCEDURE Ad_Tiene(xIdHorario IN NUMBER, xIdGrupo IN NUMBER);
    PROCEDURE Mod_SeDictaEn(xid IN NUMBER, xIdSalon IN NUMBER);
    PROCEDURE Mod_Tiene(xid IN NUMBER, xIdHorario IN NUMBER);
	PROCEDURE Mod_materias(xid IN NUMBER, xnombre IN VARCHAR,xsiglas IN VARCHAR);
	PROCEDURE Mod_grupos(xid IN NUMBER, xnumeroGrupo IN NUMBER,xcupos IN NUMBER,xinscritos IN NUMBER,xcuposdisponibles IN NUMBER);
    PROCEDURE El_SeDictaEn(xId IN NUMBER);
    PROCEDURE El_Tiene(xId IN NUMBER);
	PROCEDURE El_grupo(xid IN NUMBER);
    FUNCTION Co_estudiante(xnombre IN VARCHAR)RETURN SYS_REFCURSOR;
    FUNCTION Co_profesores(xnombre IN VARCHAR)RETURN SYS_REFCURSOR;
    FUNCTION Co_decanaturas(xnombre in VARCHAR)RETURN SYS_REFCURSOR;
END PA_Decano;
/

CREATE OR REPLACE PACKAGE PA_EmpleadoRegistro IS
    PROCEDURE Ad_estudiantes(xnombre IN VARCHAR,xtipodoc IN VARCHAR,xnumDoc IN NUMBER,xcorreo IN VARCHAR, xFechaIngreso IN DATE,
        xcorreoEci IN VARCHAR, xSemestre IN NUMBER, xcontrase�a IN VARCHAR, xDecanatura1 IN NUMBER, xDecanatura2 IN NUMBER, estudios IN XMLTYPE);
    PROCEDURE Ad_salones(xEdificio IN VARCHAR,xcapacidad IN NUMBER,xnumero IN VARCHAR);
	PROCEDURE Ad_horario(xhora IN VARCHAR,xdia IN VARCHAR);
    PROCEDURE Mod_estudiantes(xcarne IN NUMBER, xtipoDoc IN VARCHAR, xnumDoc IN NUMBER);
    PROCEDURE Mod_salones(xid IN NUMBER,xcapacidad IN NUMBER,xnumero IN NUMBER);
	PROCEDURE Mod_horarios(xid IN NUMBER,xhora IN VARCHAR,xdia IN VARCHAR);
END PA_EmpleadoRegistro;
/

CREATE OR REPLACE PACKAGE PA_Estudiante IS
    FUNCTION Co_estudiante(xnombre IN VARCHAR)RETURN SYS_REFCURSOR;
    PROCEDURE Ad_registra(xIdEstudiante IN NUMBER, xIdGrupo IN NUMBER);
    PROCEDURE El_registra(xIdEstudiante IN NUMBER, xIdGrupo IN NUMBER);
    FUNCTION Co_profesores(xnombre IN VARCHAR)RETURN SYS_REFCURSOR;
END PA_Estudiante;
/

CREATE OR REPLACE PACKAGE PA_ViceRectoria IS
    PROCEDURE Ad_profesores (xnoDoc IN NUMBER,xnombre IN VARCHAR,xtitulo IN VARCHAR,xtipoDoc IN VARCHAR,xcorreoEci IN VARCHAR,xcontrase�a IN VARCHAR);
    PROCEDURE Ad_decanaturas(xnombre IN VARCHAR,xidDecano IN NUMBER);
    PROCEDURE Mod_decanaturas(xid IN NUMBER, xNombre IN VARCHAR, xIdDecano IN NUMBER);
	PROCEDURE Mod_profesores(xNoDoc IN NUMBER,xtitulo IN VARCHAR);
	PROCEDURE El_profesores(xNoDoc IN NUMBER);
    FUNCTION Co_estudiante(xnombre IN VARCHAR)RETURN SYS_REFCURSOR;
    FUNCTION Co_profesores(xnombre IN VARCHAR)RETURN SYS_REFCURSOR;
END PA_ViceRectoria;
/

CREATE OR REPLACE PACKAGE PA_BienestarUniversitario IS
    PROCEDURE Ad_cursosextracurriculares(xnombre IN VARCHAR,xsiglase IN VARCHAR);
    PROCEDURE Ad_grupo(xnumeroGrupo IN NUMBER,xperiodo IN VARCHAR,xa�o IN NUMBER,xcupos IN NUMBER,xinscritos IN NUMBER,xcuposdisponibles IN NUMBER, xSiglasMateria IN VARCHAR, xSiglasExtra IN VARCHAR, xIdProfe IN NUMBER);
    PROCEDURE Ad_SeDictaEn(xIdSalon IN NUMBER, xIdGrupo IN NUMBER);
    PROCEDURE Ad_SeOcupaPor(xIdSalon IN NUMBER, xIdHorario IN NUMBER);
    PROCEDURE Ad_Tiene(xIdHorario IN NUMBER, xIdGrupo IN NUMBER);
    PROCEDURE Mod_SeDictaEn(xid IN NUMBER, xIdSalon IN NUMBER);
    PROCEDURE Mod_Tiene(xid IN NUMBER, xIdHorario IN NUMBER);
	PROCEDURE Mod_materias(xid IN NUMBER, xnombre IN VARCHAR,xsiglas IN VARCHAR);
	PROCEDURE Mod_grupos(xid IN NUMBER, xnumeroGrupo IN NUMBER,xcupos IN NUMBER,xinscritos IN NUMBER,xcuposdisponibles IN NUMBER);
    PROCEDURE El_cursosextarcurriculares(xid IN NUMBER);
    PROCEDURE El_SeDictaEn(xId IN NUMBER);
    PROCEDURE El_Tiene(xId IN NUMBER);
	PROCEDURE El_grupo(xid IN NUMBER);
END PA_BienestarUniversitario;
/




