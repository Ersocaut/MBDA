--POBLAR PROFESOR
insert into profesor values (1077423472,'Kristofor','Ingeniero','CC','kianetti0@escuelaing.edu.co','De6V38HJ');
insert into profesor values (1530596993,'Kaylyn','Ingeniero','CC','kfauguel1@escuelaing.edu.co','pQQEsXQidmls');
insert into profesor values (1170367429,'Frederick','Ingeniero','CC','fformilli2@escuelaing.edu.co','m6kaYBR');
insert into profesor values (1565936834,'Florella','Ingeniero','CC','fsanthouse3@escuelaing.edu.co','tQHVJ0b');
insert into profesor values (1186567018,'Kassia','Ingeniero','CC','kbranscomb4@escuelaing.edu.co','hM4Ia47K8');
insert into profesor values (1434319012,'Zondra','Ingeniero','CC','znockells5@escuelaing.edu.co','qbjH3ys');
insert into profesor values (1776802927,'Francyne','Ingeniero','CC','fpeat6@escuelaing.edu.co','oRP3xPnn4O');
insert into profesor values (1030258975,'Johnnie','Ingeniero','CC','jfiddymont7@escuelaing.edu.co','55yQJL');
insert into profesor values (1872457674,'Aluino','Ingeniero','CC','astuckes8@escuelaing.edu.co','ffOuynyu9f');
insert into profesor values (1702044766,'Anallese','Ingeniero','CC','ablumfield9@escuelaing.edu.co','5blEy5et');

--POBLAR DECANATURA
insert into decanatura (nombre, iddecano) values ('Sistemas', 1077423472);
insert into decanatura (nombre, iddecano) values ('Industrial',1170367429);
insert into decanatura (nombre, iddecano) values ('Ambiental', 1565936834);
insert into decanatura (nombre, iddecano) values ('Mecanica', 1434319012);
insert into decanatura (nombre, iddecano) values ('Electrica', 1776802927);
insert into decanatura (nombre, iddecano) values ('Electronica', 1186567018);
insert into decanatura (nombre, iddecano) values ('Biomedica', 1030258975);
insert into decanatura (nombre, iddecano) values ('Matematicas', 1702044766);
insert into decanatura (nombre, iddecano) values ('Administracion', 1872457674);
insert into decanatura (nombre, iddecano) values ('Economia', 1530596993);


--POBLAR ESTUDIANTE
insert into estudiante (nombre, tipoDoc, numdoc, correo, fechaingreso, correoeci, semestre, contraseña, decanatura1, decanatura2, estudios) values ('Blanch Wettern', 'CC', 1989169068, 'bwettern0@gmail.com', TO_DATE('04/10/2019', 'DD/MM/YYYY'), 'bwettern0@mail.escuelaing.edu.co', 1, 'otx6psVE', 3, null, null);
insert into estudiante (nombre, tipoDoc, numdoc, correo, fechaingreso, correoeci, semestre, contraseña, decanatura1, decanatura2, estudios) values ('Lester Considine', 'CC', 1746271624, 'lconsidine1@gmail.com', TO_DATE('04/10/2019', 'DD/MM/YYYY'), 'lconsidine1@mail.escuelaing.edu.co', 6, 'xqlqsNt3vy', 5, null, null);
insert into estudiante (nombre, tipoDoc, numdoc, correo, fechaingreso, correoeci, semestre, contraseña, decanatura1, decanatura2, estudios) values ('Benedikta MacDermott', 'CC', 1307049739, 'bmacdermott2@hotmail.com', TO_DATE('05/10/2019', 'DD/MM/YYYY'), 'bmacdermott2@mail.escuelaing.edu.co', 3, 'LgIIO9fkJ', 10, null, null);
insert into estudiante (nombre, tipoDoc, numdoc, correo, fechaingreso, correoeci, semestre, contraseña, decanatura1, decanatura2, estudios) values ('Brady Tordiffe', 'CC', 1160299703, 'btordiffe3@hotmail.com', TO_DATE('04/10/2019', 'DD/MM/YYYY'), 'btordiffe3@mail.escuelaing.edu.co', 5, 'NUUBh3w', 3, null, null);
insert into estudiante (nombre, tipoDoc, numdoc, correo, fechaingreso, correoeci, semestre, contraseña, decanatura1, decanatura2, estudios) values ('Fax Flattman', 'CC', 1894793996, 'fflattman4@gmail.com', TO_DATE('04/10/2019', 'DD/MM/YYYY'), 'fflattman4@mail.escuelaing.edu.co', 9, 'NSGyxdRH7', 1, null, null);
insert into estudiante (nombre, tipoDoc, numdoc, correo, fechaingreso, correoeci, semestre, contraseña, decanatura1, decanatura2, estudios) values ('Carolan Longhorn', 'CC', 1560447003, 'clonghorn5@gmail.com', TO_DATE('04/10/2019', 'DD/MM/YYYY'), 'clonghorn5@mail.escuelaing.edu.co', 6, 'asJun7e', 8, null, null);
insert into estudiante (nombre, tipoDoc, numdoc, correo, fechaingreso, correoeci, semestre, contraseña, decanatura1, decanatura2, estudios) values ('Forbes Letts',  'CC', 1454567915, 'fletts6@gmail.com', TO_DATE('04/10/2019', 'DD/MM/YYYY'), 'fletts6@mail.escuelaing.edu.co', 6, 'Dcg41ZL', 9, null, null);
insert into estudiante (nombre, tipoDoc, numdoc, correo, fechaingreso, correoeci, semestre, contraseña, decanatura1, decanatura2, estudios) values ('Hazlett Maunder', 'CC', 1587568162, 'hmaunder7@gmail.com', TO_DATE('04/10/2019', 'DD/MM/YYYY'), 'hmaunder7@mail.escuelaing.edu.co', 6, 'AjxEgO', 3, null, null);
insert into estudiante (nombre, tipoDoc, numdoc, correo, fechaingreso, correoeci, semestre, contraseña, decanatura1, decanatura2, estudios) values ('Jacquette Villar', 'CC', 1461475619, 'jvillar8@hotmail.com', TO_DATE('05/10/2019', 'DD/MM/YYYY'), 'jvillar8@mail.escuelaing.edu.co', 5, 'QTzZRf', 10, null, null);
insert into estudiante (nombre, tipoDoc, numdoc, correo, fechaingreso, correoeci, semestre, contraseña, decanatura1, decanatura2, estudios) values ('Estell Comoletti', 'CC', 1807379347, 'ecomoletti9@hotmail.com', TO_DATE('04/10/2019', 'DD/MM/YYYY'), 'ecomoletti9@mail.escuelaing.edu.co', 5, 'lFIAm5', 10, null, null);


--POBLAR CURSO EXTRA
insert into CURSOEXTRACURRICULAR (nombre, siglase) values ('Oneida Stallebrass', 'ABC');
insert into CURSOEXTRACURRICULAR (nombre, siglase) values ('Helenka Felstead', 'DEF');
insert into CURSOEXTRACURRICULAR (nombre, siglase) values ('Casey Jeanneau', 'GHI');
insert into CURSOEXTRACURRICULAR (nombre, siglase) values ('Honey Jeffrey', 'JKL');
insert into CURSOEXTRACURRICULAR (nombre, siglase) values ('Libbie Davoren', 'MNO');
insert into CURSOEXTRACURRICULAR (nombre, siglase) values ('Jobey Yosifov', 'PQR');
insert into CURSOEXTRACURRICULAR (nombre, siglase) values ('Albertina Ingles', 'STU');
insert into CURSOEXTRACURRICULAR (nombre, siglase) values ('Keary Clohessy', 'VWX');
insert into CURSOEXTRACURRICULAR (nombre, siglase) values ('Tabby Mulholland', 'YZA');
insert into CURSOEXTRACURRICULAR (nombre, siglase) values ('Jack Mackrill', 'BCD');


--POBLAR MATERIA
insert into materia (nombre, siglas, iddecanatura) values ('Zoolab', 'vsta', 7);
insert into materia (nombre, siglas, iddecanatura) values ('Rank', 'kmyd', 2);
insert into materia (nombre, siglas, iddecanatura) values ('Tres-Zap', 'htol', 6);
insert into materia (nombre, siglas, iddecanatura) values ('Ranking', 'vbel', 2);
insert into materia (nombre, siglas, iddecanatura) values ('Zontrax', 'ahal', 9);
insert into materia (nombre, siglas, iddecanatura) values ('Stringtough', 'bmor', 2);
insert into materia (nombre, siglas, iddecanatura) values ('Span', 'nsch', 5);
insert into materia (nombre, siglas, iddecanatura) values ('Zoolabs', 'bhor', 6);
insert into materia (nombre, siglas, iddecanatura) values ('Sub-Ex', 'wnel', 7);
insert into materia (nombre, siglas, iddecanatura) values ('Zaam-Dox', 'cred', 5);

--POBLAR GRUPO
insert into grupo (numerogrupo, periodo, año, cupos, inscritos, cuposdisponibles, siglasmateria, siglasextra, idprofe) values (22, '1', 2019, 25,0, 25,null,1,1077423472);
insert into grupo (numerogrupo, periodo, año, cupos, inscritos, cuposdisponibles, siglasmateria, siglasextra, idprofe) values (23, '1', 2019, 25,0, 25,null,2,1530596993);
insert into grupo (numerogrupo, periodo, año, cupos, inscritos, cuposdisponibles, siglasmateria, siglasextra, idprofe) values (15, '1', 2019, 25,0, 25,null,3,1170367429);
insert into grupo (numerogrupo, periodo, año, cupos, inscritos, cuposdisponibles, siglasmateria, siglasextra, idprofe) values (20, '1', 2013, 25,0, 25,null,4,1565936834);
insert into grupo (numerogrupo, periodo, año, cupos, inscritos, cuposdisponibles, siglasmateria, siglasextra, idprofe) values (20, '1', 2017, 25,0, 25,null,5,1434319012);
insert into grupo (numerogrupo, periodo, año, cupos, inscritos, cuposdisponibles, siglasmateria, siglasextra, idprofe) values (17, '2', 2012, 25,0, 25,1,null,1872457674);
insert into grupo (numerogrupo, periodo, año, cupos, inscritos, cuposdisponibles, siglasmateria, siglasextra, idprofe) values (21, '2', 2019, 25,0, 25,2,null,1776802927);
insert into grupo (numerogrupo, periodo, año, cupos, inscritos, cuposdisponibles, siglasmateria, siglasextra, idprofe) values (25, '2', 2019, 25,0, 25,3,null,1702044766);
insert into grupo (numerogrupo, periodo, año, cupos, inscritos, cuposdisponibles, siglasmateria, siglasextra, idprofe) values (20, '2', 2018, 25,0, 25,5,null,1186567018);
insert into grupo (numerogrupo, periodo, año, cupos, inscritos, cuposdisponibles, siglasmateria, siglasextra, idprofe) values (16, 'I', 2019, 25,0, 25,8,null,1530596993);

--POBLAR HORARIO
--LUNES
INSERT INTO HORARIO VALUES (1, '7:00', 'Lunes');
INSERT INTO HORARIO VALUES (2, '8:30', 'Lunes');
INSERT INTO HORARIO VALUES (3, '10:00', 'Lunes');
INSERT INTO HORARIO VALUES (4, '11:30', 'Lunes');
INSERT INTO HORARIO VALUES (5, '1:00', 'Lunes');
INSERT INTO HORARIO VALUES (6, '2:30', 'Lunes');
INSERT INTO HORARIO VALUES (7, '4:00', 'Lunes');
INSERT INTO HORARIO VALUES (8, '5:30', 'Lunes');
--MARTES
INSERT INTO HORARIO VALUES (9, '7:00', 'Martes');
INSERT INTO HORARIO VALUES (10, '8:30', 'Martes');
INSERT INTO HORARIO VALUES (11, '10:00', 'Martes');
INSERT INTO HORARIO VALUES (12, '11:30', 'Martes');
INSERT INTO HORARIO VALUES (13, '1:00', 'Martes');
INSERT INTO HORARIO VALUES (14, '2:30', 'Martes');
INSERT INTO HORARIO VALUES (15, '4:00', 'Martes');
INSERT INTO HORARIO VALUES (16, '5:30', 'Martes');
--MIERCOLES
INSERT INTO HORARIO VALUES (17, '7:00', 'Miercoles');
INSERT INTO HORARIO VALUES (18, '8:30', 'Miercoles');
INSERT INTO HORARIO VALUES (19, '10:00', 'Miercoles');
INSERT INTO HORARIO VALUES (20, '11:30', 'Miercoles');
INSERT INTO HORARIO VALUES (21, '1:00', 'Miercoles');
INSERT INTO HORARIO VALUES (22, '2:30', 'Miercoles');
INSERT INTO HORARIO VALUES (23, '4:00', 'Miercoles');
INSERT INTO HORARIO VALUES (24, '5:30', 'Miercoles');
--JUEVES
INSERT INTO HORARIO VALUES (25, '7:00', 'Jueves');
INSERT INTO HORARIO VALUES (26, '8:30', 'Jueves');
INSERT INTO HORARIO VALUES (27, '10:00', 'Jueves');
INSERT INTO HORARIO VALUES (28, '11:30', 'Jueves');
INSERT INTO HORARIO VALUES (29, '1:00', 'Jueves');
INSERT INTO HORARIO VALUES (30, '2:30', 'Jueves');
INSERT INTO HORARIO VALUES (31, '4:00', 'Jueves');
INSERT INTO HORARIO VALUES (32, '5:30', 'Jueves');
--VIERNES
INSERT INTO HORARIO VALUES (33, '7:00', 'Viernes');
INSERT INTO HORARIO VALUES (34, '8:30', 'Viernes');
INSERT INTO HORARIO VALUES (35, '10:00', 'Viernes');
INSERT INTO HORARIO VALUES (36, '11:30', 'Viernes');
INSERT INTO HORARIO VALUES (37, '1:00', 'Viernes');
INSERT INTO HORARIO VALUES (38, '2:30', 'Viernes');
INSERT INTO HORARIO VALUES (39, '4:00', 'Viernes');
INSERT INTO HORARIO VALUES (40, '5:30', 'Viernes');
--SABADO
INSERT INTO HORARIO VALUES (41, '7:00', 'Sabado');
INSERT INTO HORARIO VALUES (42, '8:30', 'Sabado');
INSERT INTO HORARIO VALUES (43, '10:00', 'Sabado');
INSERT INTO HORARIO VALUES (44, '11:30', 'Sabado');

--POBLAR REGISTRA
insert into registra values (2000010, 1);
insert into registra values (2000009, 2);
insert into registra values (2000007, 3);
insert into registra values (2000002, 4);
insert into registra values (2000001, 5);
insert into registra values (2000006, 6);
insert into registra values (2000003, 7);
insert into registra values (2000004, 8);
insert into registra values (2000005, 9);
insert into registra values (2000008, 10);

--POBLAR SALON
insert into salon (edificio, capacidad, numero) values ('H', 21, '1-279');
insert into salon (edificio, capacidad, numero) values ('I', 17, '1-230');
insert into salon (edificio, capacidad, numero) values ('C', 18, '2-170');
insert into salon (edificio, capacidad, numero) values ('D', 16, '301');
insert into salon (edificio, capacidad, numero) values ('I', 15, '2-250');
insert into salon (edificio, capacidad, numero) values ('A', 25, '209');
insert into salon (edificio, capacidad, numero) values ('H', 17, '238');
insert into salon (edificio, capacidad, numero) values ('A', 17, '110');
insert into salon (edificio, capacidad, numero) values ('C', 16, '1-205');
insert into salon (edificio, capacidad, numero) values ('G', 24, '213');

--POBLAR SEDICTAEN
insert into sedictaen (idsalon, idgrupo) values (1, 1);
insert into sedictaen (idsalon, idgrupo) values (2, 2);
insert into sedictaen (idsalon, idgrupo) values (3, 3);
insert into sedictaen (idsalon, idgrupo) values (4, 4);
insert into sedictaen (idsalon, idgrupo) values (5, 5);
insert into sedictaen (idsalon, idgrupo) values (6, 6);
insert into sedictaen (idsalon, idgrupo) values (7, 7);
insert into sedictaen (idsalon, idgrupo) values (8, 8);
insert into sedictaen (idsalon, idgrupo) values (9, 9);
insert into sedictaen (idsalon, idgrupo) values (10, 10);

--POBLAR SEOCUPAPOR
insert into seocupapor (idsalon, idhorario) values (1, 2);
insert into seocupapor (idsalon, idhorario) values (2, 30);
insert into seocupapor (idsalon, idhorario) values (3, 3);
insert into seocupapor (idsalon, idhorario) values (4, 32);
insert into seocupapor (idsalon, idhorario) values (5, 4);
insert into seocupapor (idsalon, idhorario) values (6, 35);
insert into seocupapor (idsalon, idhorario) values (7, 20);
insert into seocupapor (idsalon, idhorario) values (8, 3);
insert into seocupapor (idsalon, idhorario) values (9, 18);
insert into seocupapor (idsalon, idhorario) values (10, 23);

--POBLAR TIENE
insert into Tiene (idhorario, idgrupo) values (1,1);
insert into Tiene (idhorario, idgrupo) values (2,2);
insert into Tiene (idhorario, idgrupo) values (3,3);
insert into Tiene (idhorario, idgrupo) values (4,4);
insert into Tiene (idhorario, idgrupo) values (5,5);
insert into Tiene (idhorario, idgrupo) values (6,6);
insert into Tiene (idhorario, idgrupo) values (7,7);
insert into Tiene (idhorario, idgrupo) values (8,8);
insert into Tiene (idhorario, idgrupo) values (9,9);
insert into Tiene (idhorario, idgrupo) values (10,10);