SET SERVEROUTPUT ON;

DECLARE
    promedio NUMBER;
BEGIN
    FOR fila IN(SELECT * FROM NOTAS) LOOP
        promedio := (fila.nota1 + fila.nota2 + fila.nota3 + fila.nota4)/4;
        dbms_output.put_line('Nombre: ' || fila.nombre || 'Promedio: ' || promedio);
    END LOOP;
END;