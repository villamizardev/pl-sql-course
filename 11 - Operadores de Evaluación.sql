SET SERVEROUTPUT ON;

DECLARE
  a NUMBER := 5;
  b NUMBER := 10;
  
  nombre1 NVARCHAR2(100) := 'Alejandro';
  nombre2 NVARCHAR2(100);
BEGIN
    
    --Operadores normales
    IF(a <> b) THEN
        dbms_output.put_line('A es diferente a B');
    END IF;
    
    --Operador LIKE
    IF(nombre1 LIKE 'L%') THEN
        dbms_output.put_line('El nombre contiene L');
    END IF;
    
    --operador BETWEEN
    IF(a BETWEEN 5 AND 10) THEN
        dbms_output.put_line('a está entre 5 y 10');
    END IF;
    
    --operador IN
    IF(a IN(1,2,3,4,5,6,7,8,9,10)) THEN
        dbms_output.put_line('a existe en el grupo');
    END IF;
    
    --operador IS NULL
    IF(nombre2 IS NULL) THEN
        dbms_output.put_line('Nombre es nulo');
    END IF;
    
END;
/