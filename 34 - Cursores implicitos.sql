SET SERVEROUTPUT ON;

DECLARE 

BEGIN
    UPDATE empleados SET actualizado = sysdate;
    dbms_output.put_line('Afectados: ' || sql%rowcount);
    
    IF(sql%found) THEN
        dbms_output.put_line('Registros encontrados');
    ELSE
        dbms_output.put_line('Registros no encontrados');
    END IF;
    commit;
END;