EXECUTE pc_carreras.ad_carrera(1,'carrera', 'PAIS', '3', '1');
EXECUTE pc_carreras.ad_carrera(2,'carrera2', 'PAIS2', '2', '2');
EXECUTE pc_registros.ad_registro(1,TO_DATE('2010/10/10','yyyy/mm/dd'),1,1,'M','Muy facil',null);
EXECUTE pc_registros.ad_registro(2,TO_DATE('2011/11/11','yyyy/mm/dd'),2,2,'M','No muy facil',null);
SELECT pc_carreras.co_puntoscarrera() FROM DUAL;