SET SERVEROUTPUT ON;

DECLARE
    nombre NVARCHAR2(100);
    salario NUMBER;
    diastrabajados NUMBER;
    
    CURSOR cu_datos_empleados IS
        SELECT nombre, salario, diastrabajados FROM empleados;
    
        
BEGIN
    OPEN cu_datos_empleados;
        LOOP
            FETCH cu_datos_empleados INTO nombre, salario, diastrabajados;
            EXIT WHEN cu_datos_empleados%notfound;
            
            --Funcion para imprimir los datos del cliente
            pro_datos_empleado(nombre, salario, diastrabajados);
        END LOOP;
    CLOSE cu_datos_empleados;
    
END;