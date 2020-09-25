--1.
SELECT nombre,siglas
FROM materia
JOIN decanatura ON (materia.iddecanatura = decanatura.id)
ORDER BY nombre ASC;

--2. 
SELECT materia.nombre ,COUNT(idestudiante) AS numEstudiantes
FROM registra
JOIN estudiante ON (registra.idestudiante = estudiante.id)
JOIN GRUPO ON (grupo.id = registra.idgrupo)
JOIN materia ON (grupo.idmateria = materia.id)
GROUP BY materia.nombre

