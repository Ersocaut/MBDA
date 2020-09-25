--Cuando se crea el registro de un nuevo estudiante su número de carné es el consecutivo del máximo ya registrado
INSERT INTO Estudiante VALUES (2160175,'Dan','CC',12345678901,'DanDanDan@hotmail.com',null,'Dan.Bel@mail.escuelaing.edu.co',1,'LockThis123',3 );

--Un profesor debe de tener un titulos para poder dictar clases en la ECI
insert into profesor values (1077723472,'Kristofor',null,'CC','kianetty0@escuelaing.edu.co','De6V38HJ');

--Borrar decanatura
DELETE FROM Decanatura WHERE id = 1;

--Borrar materia
DELETE FROM Materia WHERE id = 5;