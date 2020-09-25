----------------------------------PRIMERA PRUEBA
--Empleado de Registro

--Un estudiante se ha sido aceptado en la Escuela Colombiana de Ingeniería en la carrera de Ingeniería de Sistemas,el epleado de registro ahora debe
--poner todos los datos proporcionados por el estudiante en el sistema de la universidad, esos datos son:
--nombre, tipo de documento de identidad (TI, CC, CE, PS), el respectivo número de identidad, un correo personal, la fecha en que se hace la inscripcion,
--el correo que le ha asignado la universidad, el semestre al que ingresa, la contrasena del correo, la decanatura a la que ha sido asignado y los estudios que ha realizado.
--Su información respectivamente es Juan Munoz, TI, 1000986580,juan@gmail.com
EXECUTE bd2160176.PA_EmpleadoRegistro.Ad_estudiantes('Juan Munoz', 'TI', 1000986580, 'juan@gmail.com', TO_DATE('01/02/2019', 'DD/MM/YYYY'), 'juan.munoz@mail.escuelaing.edu.co', 1, 'otx6psVE', 1, null, null);

--Luego de esto se le inscribe la materia de introduccion a la ingenieria de sistemas
EXECUTE bd2160176.PA_Estudiante.Ad_registra(2000004, 2);
--Luego de esto se le inscribe la materia de modelos matematicos para la informatica
EXECUTE bd2160176.PA_Estudiante.Ad_registra(2000004, 3);

--En la semana de induccion el estudiante se entera que puede tomar cursos extracurriculares y decide inscribirse en yoga
EXECUTE bd2160176.PA_Estudiante.Ad_registra(2000004, 1);

--A mitad del semestre el estudiante decide retirarse del curso de yoga, ya que no tenia tiempo para seguir llendo
EXECUTE bd2160176.PA_Estudiante.El_registra(2000004, 3);



----------------------------------SEGUNDA PRUEBA
--Secretario_General
--El bloque B recibe un adecuación para la construcción de 2 salones más, uno tiene la capacidad de 25 estudiantes y el otro una capacidad de 15 estudiantes, 
--para registrarlos, el empleado de registro ingresa a la base de datos y los registra.
EXECUTE bd2160176.PA_EmpleadoRegistro.Ad_salones('B', 25, '107');
EXECUTE bd2160176.PA_EmpleadoRegistro.Ad_salones('B', 25, '108');

--El decano decide asignar los horarios en los que se podran ocupar los nuevos salones

EXECUTE bd2160176.PA_Decano.Ad_SeOcupaPor(3, 1);
EXECUTE bd2160176.PA_Decano.Ad_SeOcupaPor(3, 2);

EXECUTE bd2160176.PA_Decano.Ad_SeOcupaPor(4, 1);
EXECUTE bd2160176.PA_Decano.Ad_SeOcupaPor(4, 2);

--El decano desea utilizar estos salones de inmediato por lo que asigna grupos que se dictaran en esos salones
EXECUTE bd2160176.PA_Decano.Ad_SeDictaEn(4, 1);
EXECUTE bd2160176.PA_Decano.Ad_SeDictaEn(3, 2);