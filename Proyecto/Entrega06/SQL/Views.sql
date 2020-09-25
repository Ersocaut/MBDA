CREATE VIEW ViewProfeInfo AS 
	(SELECT titulo, nombre, correoeci FROM Profesor);

CREATE VIEW ViewEstudianteInfo AS
	(SELECT students.nombre NombreEstudiante, students.correoeci CorreoEstudiante, students.semestre Semestre, decan.nombre Decanatura1, students.decanatura2 Decanatura2 FROM Estudiante Students
		JOIN Decanatura Decan ON (decan.id = students.decanatura1 ) );

CREATE VIEW ViewDecanaturaInfo AS
	(SELECT decanatura.nombre Decanatura, profesor.nombre Decano FROM Decanatura
		JOIN Profesor ON (idDecano = noDoc));

CREATE VIEW ViewMateriaGrupoInfo AS 
	(SELECT materia.nombre nombreMateria, materia.siglas siglasMateria, COUNT(grupo.id) cantidadGrupos FROM Materia
		JOIN Grupo ON (grupo.siglasmateria = materia.siglas)
		GROUP BY materia.nombre, materia.siglas);
        
drop view ViewProfeInfo;
drop view ViewEstudianteInfo;
drop view ViewDecanaturaInfo;
drop view ViewMateriaGrupoInfo;