SET SERVEROUTPUT ON;

DECLARE
    reg_empleado empleados%rowtype;
    
BEGIN
    SELECT * INTO reg_empleado FROM EMPLEADOS WHERE ID=5;
    dbms_output.put_line(reg_empleado.nombre);
    dbms_output.put_line(reg_empleado.id);
    dbms_output.put_line(reg_empleado.salario);
    dbms_output.put_line(reg_empleado.actualizado);
END;
/