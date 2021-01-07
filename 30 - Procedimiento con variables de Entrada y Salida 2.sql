SET SERVEROUTPUT ON;

DECLARE
    a NUMBER := 11;
    b NUMBER := 10;
    c NUMBER;
    
BEGIN
    menor_entre(a,b,c);
    dbms_output.put_line('El menor es: ' || c);
END;