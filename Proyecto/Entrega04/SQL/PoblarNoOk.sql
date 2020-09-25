--No dejara insertar debido a la longitud del id
insert into estudiante values (26185384353453, 'Blanch Wettern', 'CC', 19891690685, 'bwettern0@wix.com', null, 'bwettern0@businessinsider.com', 9, 'otx6psVE', 3);
--No hay estudiante sin decanatura
insert into estudiante values (2704628, 'Lester Considine', 'CC', 17462716724, 'lconsidihe1@unc.edu', null, 'ljonsidine1@opera.com', 6, 'xqlqsNt3vy', null);
--No deberia dejar insertar un grupo sin profesor
insert into grupo values (11, 22, 6, 16, null, 7, null);
--No deberia dejar insertar un grupo con cupos negativos
insert into grupo values (22, -23, 4, 19, 1, null, 1);
