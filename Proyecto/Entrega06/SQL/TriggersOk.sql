--TriggersAutomatizados
INSERT INTO Estudiante VALUES (2160175,'Dan','CC',123456700,'DanDanDan@hotmail.com',null,'Dan.Bel@mail.escuelaing.edu.co',1,'LockThis123',3,null );
insert into profesor values (1077723452,'Kristtofor','Ingeniero','CC','kianet0@escuelaing.edu.co','De6V38HJ');
insert into grupo values (33, 22, '1', 2016, 25,0, 25,null,'ABC',1077423472);
insert into salon values (9, 'C', 20, '7-205');
insert into materia values (33, 'Zont', 'ZZZZ', 9);

--Triggers de acción
--Un profesor debe de tener un titulos para poder dictar clases en la ECI
insert into profesor values (1077723472,'Kristofor',null,'CC','kianetty0@escuelaing.edu.co','De6V38HJ');
--Borrar decanatura
DELETE FROM Decanatura WHERE id = 1;
--Borrar materia
DELETE FROM Materia WHERE id = 5;