--Foraneas
ALTER TABLE ESTUDIANTE
ADD CONSTRAINT FK_Estudiante_Decanatura
FOREIGN KEY (idDecanatura) REFERENCES DECANATURA(id);

ALTER TABLE REGISTRA
ADD CONSTRAINT FK_Registra_Estudiante
FOREIGN KEY (idEstudiante) REFERENCES ESTUDIANTE(id);

ALTER TABLE REGISTRA
ADD CONSTRAINT FK_Registra_Grupo
FOREIGN KEY (idGrupo) REFERENCES GRUPO(id);

ALTER TABLE GRUPO
ADD CONSTRAINT FK_Grupo_Materia
FOREIGN KEY (idMateria) REFERENCES MATERIA(id);

ALTER TABLE GRUPO
ADD CONSTRAINT FK_Grupo_Extra
FOREIGN KEY (idExtra) REFERENCES CURSOEXTRACURRICULAR(id);

ALTER TABLE GRUPO
ADD CONSTRAINT FK_Grupo_Profesor
FOREIGN KEY (idProfe) REFERENCES PROFESOR(id);

ALTER TABLE MATERIA
ADD CONSTRAINT FK_Materia_Decanatura
FOREIGN KEY (idDecanatura) REFERENCES DECANATURA(id);

ALTER TABLE SEDICTAEN
ADD CONSTRAINT FK_SeDictaEn_Salon
FOREIGN KEY (idSalon) REFERENCES SALON(id);

ALTER TABLE SEDICTAEN
ADD CONSTRAINT FK_SeDictaEn_Grupo
FOREIGN KEY (idGrupo) REFERENCES GRUPO(id);

ALTER TABLE SEOCUPAPOR
ADD CONSTRAINT FK_SeOcupaPor_Salon
FOREIGN KEY (idSalon) REFERENCES SALON(id);

ALTER TABLE SEOCUPAPOR
ADD CONSTRAINT FK_SeOcupaPor_Horario
FOREIGN KEY (idHorario) REFERENCES HORARIO(id);