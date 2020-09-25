EXECUTE bd2160176.PA_ViceRectoria.Ad_profesores(1077423472,'Kristofor','Ingeniero','CC','kianetti0@escuelaing.edu.co','De6V38HJ');
EXECUTE bd2160176.PA_ViceRectoria.Ad_profesores(1530596993,'Kaylyn','Ingeniero','CC','kfauguel1@escuelaing.edu.co','pQQEsXQidmls');
EXECUTE bd2160176.PA_ViceRectoria.Ad_profesores(1170367429,'Frederick','Ingeniero electrico','CC','fformilli2@escuelaing.edu.co','m6kaYBR');
EXECUTE bd2160176.PA_ViceRectoria.Mod_profesores(1530596993, 'Ingeniero de sistemas');

EXECUTE bd2160176.PA_ViceRectoria.Ad_decanaturas('Sistemas', 1077423472);
EXECUTE bd2160176.PA_ViceRectoria.Ad_decanaturas('Ingenieria Mecanica', 1170367429);
EXECUTE bd2160176.PA_ViceRectoria.Mod_decanaturas(1, 'Ingenieria Sistemas', 1530596993);

EXECUTE bd2160176.PA_EmpleadoRegistro.Ad_estudiantes('Juan Manuel Munoz', 'TI', 1989989068, 'bwettqwsn0@gmail.com', TO_DATE('01/02/2019', 'DD/MM/YYYY'), 'bwetjsdgttern0@mail.escuelaing.edu.co', 1, 'otx6psVE', 1, null, null);
EXECUTE bd2160176.PA_EmpleadoRegistro.Ad_estudiantes('Lester Considine', 'CC', 1746271624, 'lconsidine1@gmail.com', TO_DATE('01/02/2016', 'DD/MM/YYYY'), 'lconsidine1@mail.escuelaing.edu.co', 1, 'xqlqsNt3vy', 1, null, null);
EXECUTE bd2160176.PA_EmpleadoRegistro.Ad_estudiantes('Benedikta MacDermott', 'CC', 1307049739, 'bmacdermott2@hotmail.com', TO_DATE('01/02/2014', 'DD/MM/YYYY'), 'bmacdermott2@mail.escuelaing.edu.co', 3, 'LgIIO9fkJ', 1, null, null);
EXECUTE bd2160176.PA_EmpleadoRegistro.Mod_estudiantes(1, 'CC', 1989989068);

EXECUTE bd2160176.PA_EmpleadoRegistro.Ad_salones('H', 21, '1-203');
EXECUTE bd2160176.PA_EmpleadoRegistro.Ad_salones('I', 17, '1-230');

EXECUTE bd2160176.PA_EmpleadoRegistro.Ad_horario('7:00', 'Lunes');
EXECUTE bd2160176.PA_EmpleadoRegistro.Ad_horario('8:30', 'Lunes');

EXECUTE bd2160176.PA_Decano.Ad_Materias('Introduccion a la ingenieria de sistemas', 'INSI', 1);
EXECUTE bd2160176.PA_Decano.Ad_Materias('Modelos matematicos para la informatica', 'MMIN', 1);
EXECUTE bd2160176.PA_Decano.Ad_Materias('Tres-Zap', 'htol', 2);

EXECUTE bd2160176.PA_BienestarUniversitario.Ad_cursosextracurriculares('Yoga', 'YOGA');
EXECUTE bd2160176.PA_BienestarUniversitario.Ad_cursosextracurriculares('Helenka Felstead', 'DEG');

EXECUTE bd2160176.PA_BienestarUniversitario.Ad_grupo(22, '1', 2020, 25,0, 25,null,1,1077423472);
EXECUTE bd2160176.PA_Decano.Ad_grupo(23, '1', 2020, 25,0, 25,1,null,1530596993);
EXECUTE bd2160176.PA_Decano.Ad_grupo(23, '1', 2020, 25,0, 25,2,null,1530596993);

EXECUTE bd2160176.PA_Decano.Ad_SeDictaEn(1, 1);
EXECUTE bd2160176.PA_Decano.Ad_SeDictaEn(2, 1);

EXECUTE bd2160176.PA_Decano.Ad_SeOcupaPor(1, 1);
EXECUTE bd2160176.PA_Decano.Ad_SeOcupaPor(1, 2);

EXECUTE bd2160176.PA_Decano.Ad_Tiene(1, 1);
EXECUTE bd2160176.PA_Decano.Ad_Tiene(2, 1);

EXECUTE bd2160176.PA_Estudiante.Ad_registra(2000001, 1);
EXECUTE bd2160176.PA_Estudiante.Ad_registra(2000002, 2);
