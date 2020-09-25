--Tuplas
ALTER TABLE Estudiante
ADD CONSTRAINT CH_Est_Correo
CHECK (
    (correo LIKE '%@gmail.com' OR correo LIKE '%@hotmail.com' OR correo LIKE '%@outlook.com') AND correo NOT LIKE '%@%@%'
);

ALTER TABLE Estudiante
ADD CONSTRAINT CH_Est_CorECI
CHECK (
    correoEci LIKE '%@mail.escuelaing.edu.co' AND correoEci NOT LIKE '%@%@%'
);

ALTER TABLE Profesor
ADD CONSTRAINT CH_Pro_CorECI
CHECK (
    correoEci LIKE '%@escuelaing.edu.co' AND correoEci NOT LIKE '%@%@%'
);

ALTER TABLE Horario
ADD CONSTRAINT CH_Horario_Hora
CHECK (
    hora LIKE '%:%'
);