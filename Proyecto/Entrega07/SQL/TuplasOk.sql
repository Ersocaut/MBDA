--Tuplas Ok

--CH_Tupla_Grupo
insert into profesor values (1776802927,'Francyne','Ingeniero','CC','fpeat6@escuelaing.edu.co','oRP3xPnn4O');
insert into decanatura values (1, 'Sistemas', 1776802927);
insert into materia values (1, 'Zoolab', 'vsta', 1);
insert into grupo values (7, 21, '2', 2019, 25,0, 25,'vsta',null, 1776802927);
DELETE FROM Profesor;
DELETE FROM Materia;
DELETE FROM Grupo;

--CH_XOR_Grupo
insert into Profesor values (1077423472,'Kristofor','Ingeniero','CC','kianetti0@escuelaing.edu.co','De6V38HJ');
insert into Profesor values (1530596993,'Kaylyn','Ingeniero','CC','kfauguel1@escuelaing.edu.co','pQQEsXQidmls');
insert into Materia values (2, 'Rank', 'kmyd', 1);
insert into CursoExtracurricular values (1, 'Oneida Stallebrass', 'ABC');
insert into Grupo values (1, 22, '1', 2016, 25,0, 25, null,'ABC', 1077423472);
insert into Grupo values (8, 25, '2', 2019, 25,0, 25,'kmyd',null, 1530596993);
DELETE FROM Profesor;
DELETE FROM Materia;
DELETE FROM Grupo;
DELETE FROM CursoExtracurricular;

--Las otras son unicas, no considero necesario hacer pruebas