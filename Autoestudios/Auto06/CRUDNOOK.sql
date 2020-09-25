--CrudNoOk
--INSERTAR MUSICO
--Hace falta información y hay datos null que son requeridos
EXECUTE PC_MUSICO.AD_MUSICO ('JOHN',TO_DATE('1998/01/02','YYYY/MM/DD'),null,null);
--MODIFICAR MUSICO
--Se está dando información que no se puede modificar
EXECUTE PC_MUSICO.MOD_MUSICO (22,TO_DATE('1998/01/02','YYYY/MM/DD'),NULL,8);
--ELIMINAR MUSICO
--Para eliminar un músico es requerido su m_no, no su nombre
EXECUTE PC_MUSICO.EL_MUSICO ('JHON');