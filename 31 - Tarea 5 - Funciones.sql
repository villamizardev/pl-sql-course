CREATE OR REPLACE FUNCTION promedio_notas_alumno(nota1 IN NUMBER, nota2 IN NUMBER, nota3 IN NUMBER, nota4 IN NUMBER)
RETURN NUMBER
IS
    promedio NUMBER;
BEGIN
    promedio := (nota1 + nota2 + nota3 + nota4)/4;
    RETURN promedio;
END;
/