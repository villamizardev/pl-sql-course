CREATE OR REPLACE NONEDITIONABLE PROCEDURE pro_datos_empleado(nombre IN NVARCHAR2, salario NUMBER, diastrabajados NUMBER)
IS

BEGIN
    dbms_output.put_line('================================');
    dbms_output.put_line('Empleado: ' || nombre);
    dbms_output.put_line('Salario Diario: ' || (salario/30));
    dbms_output.put_line('Días Trabajados: ' || diastrabajados);
    dbms_output.put_line('Salarioo a pagar: ' || (diastrabajados*salariodiario));
    dbms_output.put_line('================================');
END;