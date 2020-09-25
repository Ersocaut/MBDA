--Este corre en la base de BD2130184
EXECUTE BD2130184.PA_ADMINISTRADOR.Ad_Registro(1,TO_DATE('2010/10/10','yyyy/mm/dd'),1,1,'M','Muy facil',null);
EXECUTE BD2130184.PA_ADMINISTRADOR.Ad_Registro(2,TO_DATE('2011/11/11','yyyy/mm/dd'),2,2,'M','No muy facil',null);
EXECUTE BD2130184.PA_ADMINISTRADOR.Ad_Registro(3,TO_DATE('2013/13/13','yyyy/mm/dd'),2,2,'A','Hardcore',null);
--Este corre en la base de BD2154026
EXECUTE BD2154026.PA_PARTICIPANTE.Ad_Carrera(1,'carrera', 'PAIS', '3', '1');
EXECUTE BD2154026.PA_PARTICIPANTE.Ad_Carrera(2,'carrera2', 'PAIS2', '2', '2');