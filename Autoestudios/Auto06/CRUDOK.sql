--INSERTAR MUSICO
EXECUTE PC_MUSICO.AD_MUSICO ('JOHN',TO_DATE('1998/01/02','YYYY/MM/DD'),null,1,2);
--MODIFICAR MUSICO
EXECUTE PC_MUSICO.MOD_MUSICO (22,NULL,8);
--ELIMINAR MUSICO
EXECUTE PC_MUSICO.EL_MUSICO (23);

--INSERTAR Composicion
EXECUTE PC_Composition.AD_Composition (TO_DATE('1998/01/02','YYYY/MM/DD'),'EL album',1);
--MODIFICAR Composicion
EXECUTE PC_Composition.MOD_Composition (1,'Boom');