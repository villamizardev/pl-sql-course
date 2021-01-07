SET SERVEROUTPUT ON;

DECLARE
--Variables
    nombre NVARCHAR2(100) := 'Alejandro';
    apellido NVARCHAR2(100) := 'Villamizar';
    nombreCompleto NVARCHAR2(200);
    hoy date := sysdate;
    nombre2 NVARCHAR2(100);

BEGIN
    nombreCompleto := nombre || ' ' || apellido;
    dbms_output.put_line('LONGITUD: ' || length(nombre));
    dbms_output.put_line('TRIM: ' || trim(nombre));
    dbms_output.put_line('MINUSCULA: ' || lower(nombre));
    dbms_output.put_line('MAYÚSCULA: ' || upper(nombre));
    dbms_output.put_line('SUBSTRING: ' || substr(nombre, 0,3));
    nombre := lower(nombre);
    dbms_output.put_line('REEMPLAZAR: ' || replace(nombre, 'a','i'));
    
    --Función de fecha
    dbms_output.put_line('Agregar Mes ' || hoy);
    dbms_output.put_line('Agregar Mes ' || add_months(hoy, 1));
    dbms_output.put_line('Agregar Mes ' || (hoy + 1));
    dbms_output.put_line('NOMBRE COMPLETO: ' || nombreCompleto);
    dbms_output.put_line('DIA: ' || to_char(hoy, 'dd'));
    dbms_output.put_line('DIA Y MES: ' || to_char(hoy, 'dd-MM'));
    dbms_output.put_line('AÑO: ' || to_char(hoy, 'yyyy'));
    dbms_output.put_line('NVL: ' || NVL(nombre2, 'Es Nulo'));
    
    
END;
/