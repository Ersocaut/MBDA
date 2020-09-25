EXECUTE PC_Profesores.Ad_profesores(1077423472,'Kristofor','Ingeniero','CC','kianetti0@escuelaing.edu.co','De6V38HJ');
EXECUTE PC_Profesores.Ad_profesores(1530596993,'Kaylyn','Ingeniero','CC','kfauguel1@escuelaing.edu.co','pQQEsXQidmls');
EXECUTE PC_Profesores.Ad_profesores(1170367429,'Frederick','Ingeniero electrico','CC','fformilli2@escuelaing.edu.co','m6kaYBR');
EXECUTE PC_Profesores.Mod_profesores(1530596993, 'Ingeniero de sistemas');

EXECUTE PC_Decanaturas.Ad_decanaturas('Sistemas', 1077423472);
EXECUTE PC_Decanaturas.Ad_decanaturas('Ingenieria Mecanica', 1170367429);
EXECUTE PC_Decanaturas.Mod_decanaturas(1, 'Ingenieria Sistemas', 1530596993);

EXECUTE PC_Estudiantes.Ad_estudiantes('Juan Manuel Munoz', 'TI', 1989989068, 'bwettqwsn0@gmail.com', TO_DATE('01/02/2019', 'DD/MM/YYYY'), 'bwetjsdgttern0@mail.escuelaing.edu.co', 1, 'otx6psVE', 1, null, null);
EXECUTE PC_Estudiantes.Ad_estudiantes('Lester Considine', 'CC', 1746271624, 'lconsidine1@gmail.com', TO_DATE('01/02/2016', 'DD/MM/YYYY'), 'lconsidine1@mail.escuelaing.edu.co', 1, 'xqlqsNt3vy', 1, null, null);
EXECUTE PC_Estudiantes.Ad_estudiantes('Benedikta MacDermott', 'CC', 1307049739, 'bmacdermott2@hotmail.com', TO_DATE('01/02/2014', 'DD/MM/YYYY'), 'bmacdermott2@mail.escuelaing.edu.co', 3, 'LgIIO9fkJ', 1, null, null);
EXECUTE PC_Estudiantes.Mod_estudiantes(1, 'CC', 1989989068);

EXECUTE PC_Cursos.Ad_salones('H', 21, '1-203');
EXECUTE PC_Cursos.Ad_salones('I', 17, '1-230');

EXECUTE PC_Cursos.Ad_horario('7:00', 'Lunes');
EXECUTE PC_Cursos.Ad_horario('8:30', 'Lunes');

EXECUTE PC_Cursos.Ad_Materias('Pobsito', 'POOB', 1);
EXECUTE PC_Cursos.Ad_Materias('Tres-Zap', 'htol', 2);

EXECUTE PC_Cursos.Ad_cursosextracurriculares('Oneida ABC', 'HGF');
EXECUTE PC_Cursos.Ad_cursosextracurriculares('Helenka Felstead', 'DEG');

EXECUTE PC_Cursos.Ad_grupo(22, '1', 2019, 25,0, 25,null,1,1077423472);
EXECUTE PC_Cursos.Ad_grupo(23, '1', 2019, 25,0, 25,1,null,1530596993);

EXECUTE PC_Cursos.Ad_SeDictaEn(1, 1);
EXECUTE PC_Cursos.Ad_SeDictaEn(2, 1);

EXECUTE PC_Cursos.Ad_SeOcupaPor(1, 1);
EXECUTE PC_Cursos.Ad_SeOcupaPor(1, 2);

EXECUTE PC_Cursos.Ad_Tiene(1, 1);
EXECUTE PC_Cursos.Ad_Tiene(2, 1);

EXECUTE PC_Estudiantes.Ad_registra(2000001, 1);
EXECUTE PC_Estudiantes.Ad_registra(2000002, 2);
