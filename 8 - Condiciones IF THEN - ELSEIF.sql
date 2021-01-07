SET SERVEROUTPUT ON;

DECLARE
    nota NUMBER := 85;
    
BEGIN

    IF(nota >= 90) THEN
        dbms_output.put_line('Excelente');
    ELSIF(nota >= 80) THEN
        dbms_output.put_line('Sobresaliente');
    ELSIF(nota >=70) THEN
        dbms_output.put_line('Aceptable');
    ELSE 
        dbms_output.put_line('Necesita mejorar');
    END IF;
END;
/