/*Dado el siguiente PL, determine el promedio de las notas contenidas en el arreglo.
Puede utilizar cualquier ciclo visto en la sección.
— =============
— Codigo PL-SQL
— =============*/

SET SERVEROUTPUT ON;

DECLARE
    TYPE notasArray IS VARRAY(4) OF NUMBER;
    notas notasArray := notasArray(95,60,75,85);
    promedio NUMBER := 0;
    
BEGIN   
    FOR i in 1..notas.count LOOP
        promedio := (notas(i) + promedio);
    END LOOP;
    dbms_output.put_line('PROMEDIO DE NOTAS: ' || promedio/notas.count);
    
END;
/