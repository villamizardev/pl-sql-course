SET SERVEROUTPUT ON;

DECLARE
    nota NUMBER := 66;
    
BEGIN
    IF(nota BETWEEN 67 AND 69) THEN
        nota:= 70;
    END IF;
    dbms_output.put_line(nota);
    
    IF(nota >= 70) THEN
        dbms_output.put_line('Aprobó');
    ELSE
        dbms_output.put_line('Reprobó');
    END IF;
    
END;
/