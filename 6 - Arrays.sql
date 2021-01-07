SET SERVEROUTPUT ON;

DECLARE
    --Definimos los arreglos
    TYPE alumnosArray IS VARRAY(5) OF NVARCHAR2(100);
    TYPE notasArray IS VARRAY(5) OF NUMBER;
    
    --Utilizar los arreglos
    alumnos alumnosArray;
    notas notasArray;
    
BEGIN
    alumnos := alumnosArray('Alejandro', 'Maye', 'Liliana', 'Luis', 'Tokyo');
    notas := notasArray(26, 25, 45, 63, 2);
    
    dbms_output.put_line(alumnos(1));
    dbms_output.put_line(alumnos(2));
    dbms_output.put_line(alumnos(3));
    dbms_output.put_line(alumnos(4));
    dbms_output.put_line(alumnos(5));
    
    

END;
/