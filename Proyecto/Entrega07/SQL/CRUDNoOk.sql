--El id debe ser un numero
EXECUTE PC_Profesores.Ad_profesores('12g','Kristofor','Ingeniero','CC','kianetti0@escuelaing.edu.co','De6V38HJ');
--El tipo de documento no es valido
EXECUTE PC_Profesores.Ad_profesores(1530596993,'Kaylyn','Ingeniero','CA','kfauguel1@escuelaing.edu.co','pQQEsXQidmls');
--No tiene un correo valido
EXECUTE PC_Profesores.Ad_profesores(1170367429,'Frederick','Ingeniero electrico','CC','fformil','m6kaYBR');

--El profesor no se ha creado
EXECUTE PC_Decanaturas.Ad_decanaturas('Sistemas', 1077423472);

--El tipo de documento no es valido
EXECUTE PC_Estudiantes.Ad_estudiantes('Juan Manuel Munoz', 'TA', 1989989068, 'bwettqwsn0@gmail.com', TO_DATE('01/02/2019', 'DD/MM/YYYY'), 'bwetjsdgttern0@mail.escuelaing.edu.co', 1, 'otx6psVE', 1, null, null);
--No tiene un correo valido
EXECUTE PC_Estudiantes.Ad_estudiantes('Lester Considine', 'CC', 1746271624, 'lconsidine1.com', TO_DATE('01/02/2016', 'DD/MM/YYYY'), 'lconsidine1@mail.escuelaing.edu.co', 1, 'xqlqsNt3vy', 1, null, null);

--No hay un edificio Z
EXECUTE PC_Cursos.Ad_salones('Z', 21, '1-203');
--Noo tiene suficiente capacidad
EXECUTE PC_Cursos.Ad_salones('I', 1, '1-230');

--No pertenece a una decanatura valida
EXECUTE PC_Cursos.Ad_Materias('Pobsito', 'POOB', 0);
