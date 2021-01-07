set serveroutput on;

DECLARE
-- definición de funciones y variables
    salario number := 1500;
    nombre nvarchar2(100);
    activo boolean;
    fecha date;
    
    

BEGIN
    nombre := 'Alejandro Villamizar';
    activo := true;
    fecha := '06-01-2021';

dbms_output.put_line('EMPLEADO: ' || nombre);
dbms_output.put_line('SALARIO BASE: ' || salario);
dbms_output.put_line('FECHA DE HOY: '|| fecha);
dbms_output.put_line('ESTADO: ' || case when activo then 'SÍ' else 'NO' end);
END;
/