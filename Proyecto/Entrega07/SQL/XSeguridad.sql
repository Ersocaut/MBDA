REVOKE EXECUTE ON PA_EmpleadoRegistro FROM EmpleadoRegistro;
REVOKE EXECUTE ON PA_Decano FROM Decano;
REVOKE EXECUTE ON PA_Estudiante FROM Estudiante;
REVOKE EXECUTE ON PA_VICERECTORIA FROM ViceRector;
REVOKE EXECUTE ON PA_BienestarUniversitario FROM EmpleadoBU;

DROP ROLE Estudiante;
DROP ROLE Decano;
DROP ROLE EmpleadoRegistro;
DROP ROLE ViceRector;
DROP ROLE EmpleadoBU;
