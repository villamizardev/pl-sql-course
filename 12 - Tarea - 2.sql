/* AUMENTO SALARIAL
    
    Realizar un PL/SQL para determinar el aumento de salario y el nuevo salario neto de un empleado de la siguiente manera:
    - Se definirá el salario base en Dólares del empleado. Este dato lo ingresaremos en la declaración del PL.
    (Debe de ser entre un rango de 600 a 2000 USDs)
    
    2- El cálculo del aumento será de la siguiente manera:
        - <= $600, le corresponde un 15% de aumento
        - entre 601 y 950, aumento de 13.5%
        - entre 951 y 1400, aumento de 10%
        - >= 1401, aumento del 5%
    
    3- Imprimir los resultados en consola
*/
SET SERVEROUTPUT ON;

DECLARE
  salario NUMBER := round(dbms_random.value(600, 2000));
  
BEGIN
    dbms_output.put_line('SALARIO: ' || salario);
    CASE
        WHEN salario <= 600 THEN
            dbms_output.put_line('15% DE AUMENTO SALARIAL: ' || ((0.15 * salario) + salario));
        WHEN salario BETWEEN 601 AND 950 THEN
            dbms_output.put_line('13.5% DE AUMENTO SALARIAL: ' || ((0.135 * salario) + salario));
        WHEN salario BETWEEN 951 AND 1400 THEN
            dbms_output.put_line('10% DE AUMENTO SALARIAL: ' || ((0.10 * salario) + salario));
        WHEN salario > 1401 THEN
            dbms_output.put_line('5% DE AUMENTO SALARIAL: ' || ((0.05 * salario) + salario));
        ELSE
            dbms_output.put_line('SIN AUMENTO SALARIAL');
    END CASE;
    
END;
/