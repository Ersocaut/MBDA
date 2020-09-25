CREATE ROLE Estudiante;
CREATE ROLE Decano;
CREATE ROLE EmpleadoRegistro;
CREATE ROLE ViceRector;
CREATE ROLE EmpleadoBU;


GRANT EXECUTE ON PA_EmpleadoRegistro TO EmpleadoRegistro;
GRANT EXECUTE ON PA_Decano TO Decano;
GRANT EXECUTE ON PA_Estudiante TO Estudiante;
GRANT EXECUTE ON PA_VICERECTORIA TO ViceRector;
GRANT EXECUTE ON PA_BienestarUniversitario TO EmpleadoBU;

GRANT Decano TO bd2160176;
GRANT Estudiante TO bd2160176;
GRANT EmpleadoRegistro TO bd2160176;
GRANT ViceRector TO bd2160176;
GRANT EmpleadoBU TO bd2160176;