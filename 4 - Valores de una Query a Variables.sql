SET SERVEROUTPUT ON;

DECLARE
    cantidad NUMBER;
    usuario NVARCHAR2(100);
    
BEGIN
    SELECT USER INTO usuario FROM DUAL;
    dbms_output.put_line('USUARIO: ' || usuario);
    
    SELECT COUNT (*) INTO cantidad FROM DUAL;
    dbms_output.put_line('CANTIDAD: ' || cantidad);
END;
/