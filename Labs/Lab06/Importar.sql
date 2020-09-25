CREATE VIEW V_MBDA AS
    SELECT DISTINCT * FROM MBDA.miembros;

INSERT INTO Miembro 
    SELECT rownum, tipo, numero, pais, correo
        FROM V_MBDA
        WHERE numero >= 1111111111
        AND RAZON IS NULL
        AND LENGTH(correo) < 31
        AND LENGTH(pais) < 16;

CREATE VIEW VV_MBDA AS
    SELECT rownum AS mm, tipo, numero, pais, correo, razon, nombres, nacimiento, categoria
        FROM V_MBDA;

ALTER TABLE Persona DROP CONSTRAINT CH_ID_P_MIEMBRO;
INSERT INTO Persona
    SELECT VV_MBDA.mm, VV_MBDA.nombres, VV_MBDA.numero
    FROM VV_MBDA
    JOIN Miembro ON (VV_MBDA.numero = miembro.id)
    WHERE VV_MBDA.numero>=1 
        AND VV_MBDA.RAZON IS NULL
        AND LENGTH(VV_MBDA.correo) < 31
        AND LENGTH(VV_MBDA.pais) < 16
        AND VV_MBDA.nombres IS NOT NULL
        AND VV_MBDA.razon IS NULL;