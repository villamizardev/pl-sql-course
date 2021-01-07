CREATE OR REPLACE PROCEDURE actualiza_fecha_empleados
AS

BEGIN
    UPDATE empleados SET actualizado = sysdate;
END;
/