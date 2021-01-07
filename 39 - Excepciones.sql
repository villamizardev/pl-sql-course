SET SERVEROUTPUT ON;

DECLARE

    nombre NVARCHAR2(100);

BEGIN
    
    SELECT nombre INTO nombre FROM EMPLEADOS WHERE ID=20;    
    dbms_output.put_line(nombre);
    
    EXCEPTION 
        --WHEN NO_DATA_FOUND THEN
          --  dbms_output.put_line('No se encontraron los datos');
        WHEN others THEN
            dbms_output.put_line('Ha ocurrido un error');
        
END;
/