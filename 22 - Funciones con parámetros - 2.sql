SET SERVEROUTPUT ON;

DECLARE
    a NUMBER := 10;
    b NUMBER := 25;
    z NUMBER;
    
BEGIN
    z := mayor_entre(a,b);
    dbms_output.put_line('El mayor es: ' || z);
END;
/