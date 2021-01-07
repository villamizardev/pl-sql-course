/*
    Dado el siguiente PL, determine el factorial de un numero utilizando un ciclo WHILE.
    NOTA:El factorial de un numero es igual a la multiplicación de cada uno de las unidades que lo conforman, es decir:
    - factorial de 2 = 2x1, igual a 2
    - factorial de 3 = 3x2x1, igual a 6
    - factorial de 4 = 4x3x2x1, igual a 24
    - factorial de 5 = 5x4x3x2x1, igual a 120
    — =============
    — Codigo PL-SQL
    — =============
*/
SET SERVEROUTPUT ON;

DECLARE
 numero NUMBER := 5;
 i NUMBER:= numero-1;
 
BEGIN
    WHILE i >= 1 LOOP
        dbms_output.put_line(numero || ' X ' || i || ' = ' ||numero);
        numero := numero * i; 
        i := i-1;
    END LOOP;
    
    dbms_output.put_line('Factorial de ' || numero || ' es: ' ||numero); -- Imprimir el resultado del factorial
END;
/