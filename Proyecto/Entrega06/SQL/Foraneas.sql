--Foraneas

ALTER TABLE ESTUDIANTE
ADD CONSTRAINT FK_Estudiante_Decanatura1
FOREIGN KEY (Decanatura1) REFERENCES DECANATURA(id);

ALTER TABLE ESTUDIANTE
ADD CONSTRAINT FK_Estudiante_Decanatura
FOREIGN KEY (Decanatura2) REFERENCES DECANATURA(id);

ALTER TABLE REGISTRA
ADD CONSTRAINT FK_Registra_Estudiante
FOREIGN KEY (idEstudiante) REFERENCES ESTUDIANTE(carne);

ALTER TABLE REGISTRA
ADD CONSTRAINT FK_Registra_Grupo
FOREIGN KEY (idGrupo) REFERENCES GRUPO(id);

ALTER TABLE GRUPO
ADD CONSTRAINT FK_Grupo_Materia
FOREIGN KEY (siglasMateria) REFERENCES MATERIA(siglas);

ALTER TABLE GRUPO
ADD CONSTRAINT FK_Grupo_Extra
FOREIGN KEY (siglasExtra) REFERENCES CURSOEXTRACURRICULAR(siglase);

ALTER TABLE GRUPO
ADD CONSTRAINT FK_Grupo_Profesor
FOREIGN KEY (idProfe) REFERENCES PROFESOR(noDoc);

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

ALTER TABLE Tiene
ADD CONSTRAINT FK_Tiene_Horario
FOREIGN KEY (idHorario) REFERENCES Horario(id);

ALTER TABLE Tiene
ADD CONSTRAINT FK_Tiene_Grupo
FOREIGN KEY (idGrupo) REFERENCES Grupo(id);

ALTER TABLE Decanatura
ADD CONSTRAINT FK_decano_decanatura
FOREIGN KEY (iddecano) REFERENCES Profesor (noDoc);