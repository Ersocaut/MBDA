--Tuplas No Ok

--CH_Tupla_Grupo
insert into profesor values (1776802927,'Francyne','Ingeniero','CC','fpeat6@escuelaing.edu.co','oRP3xPnn4O');
insert into materia values (1, 'Zoolab', 'vsta', 1);
insert into grupo values (7, 21, '2', 2019, 25,26, 25,'vsta',null, 1776802927);
DELETE FROM Profesor;
DELETE FROM Materia;
DELETE FROM Grupo;

--CH_XOR_Grupo
insert into Profesor values (1077423472,'Kristofor','Ingeniero','CC','kianetti0@escuelaing.edu.co','De6V38HJ');
insert into Profesor values (1530596993,'Kaylyn','Ingeniero','CC','kfauguel1@escuelaing.edu.co','pQQEsXQidmls');
insert into Materia values (2, 'Rank', 'kmyd', 1);
insert into CursoExtracurricular values (1, 'Oneida Stallebrass', 'ABC');
insert into Grupo values (1, 22, '1', 2016, 25,0, 25, 'kmyd','ABC', 1077423472);
DELETE FROM Profesor;
DELETE FROM Materia;
DELETE FROM Grupo;
DELETE FROM CursoExtracurricular;

--Tupla UK Grupo
--(numeroGrupo, periodo, año, siglasMateria,siglasExtra);
insert into Profesor values (1077423472,'Kristofor','Ingeniero','CC','kianetti0@escuelaing.edu.co','De6V38HJ');
insert into Materia values (2, 'Rank', 'kmyd', 1);
insert into CursoExtracurricular values (1, 'Oneida Stallebrass', 'ABC');
insert into Grupo values (1, 22, '1', 2016, 25,0, 25, null,'ABC', 1077423472);
insert into Grupo values (2, 22, '1', 2016, 25,0, 25, null,'ABC', 1077423472);
DELETE FROM Profesor;
DELETE FROM Materia;
DELETE FROM Grupo;
DELETE FROM CursoExtracurricular;

--Tupla UK Horario
--(hora, dia)
INSERT INTO Horario VALUES (1, '7:00', 'Lunes');
INSERT INTO Horario VALUES (2, '7:00', 'Lunes');
DELETE FROM Horario;

--Tupla UK Materia
--(nombre, siglas)
insert into Profesor values (1077423472,'Kristofor','Ingeniero','CC','kianetti0@escuelaing.edu.co','De6V38HJ');
insert into Materia values (2, 'Rank', 'kmyd', 1);
insert into Materia values (3, 'Rank', 'kmyd', 1);
DELETE FROM Profesor;
DELETE FROM Materia;

--Tupla UK Curso Extra
--(nombre, siglasE)
insert into CursoExtracurricular values (1, 'Oneida Stallebrass', 'ABC');
insert into CursoExtracurricular values (2, 'Oneida Stallebrass', 'ABC');
DELETE FROM CursoExtracurricular;

--Tupla UK Profesor
--(noDoc, tipoDoc) Sin embargo lo primero en salir es el error por la pk
insert into Profesor values (1077423472,'Kristofor','Ingeniero','CC','kianetti0@escuelaing.edu.co','De6V38HJ');
insert into Profesor values (1077423472,'Leopold','Ingeniero','CC','Leopold@escuelaing.edu.co','ssSDhdaU767');
DELETE FROM Profesor;

--Tupla UK Salon
--(edificio, numero)
insert into salon values (1, 'H', 21, '1-279');
insert into salon values (2, 'H', 21, '1-279');
DELETE FROM Salon;

--Tupla UK Estudiante
--(tipoDoc, numDoc)
insert into estudiante values (2000001, 'Bartolo Midern', 'CC', 1989169068, 'bwettern0@gmail.com', to_date('04/10/2019'), 'bartoddj@mail.escuelaing.edu.co', 9, 'otx6psVE', 1, null);
insert into estudiante values (2618538, 'Blanch Wettern', 'CC', 1989169068, 'bwettern0@gmail.com', to_date('04/10/2019'), 'bwettern0@mail.escuelaing.edu.co', 9, 'otx6psVE', 1, null);
DELETE FORM Estudiante;