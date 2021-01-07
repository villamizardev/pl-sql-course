SET SERVEROUTPUT ON;

DECLARE
    TYPE carro IS RECORD(
        marca NVARCHAR2(100),
        modelo NVARCHAR2(100),
        puertas NUMBER
    );
    
    mazda carro;
    toyota carro;
    
    --Procedimiento de impresi�n
        PROCEDURE imprimir_carro(car carro) IS
        BEGIN
            dbms_output.put_line(car.marca);
            dbms_output.put_line(car.modelo);
            dbms_output.put_line(car.puertas);

        END;
    --Fin procedimiento de impresi�n

BEGIN
    mazda.marca := 'Mazda';
    mazda.modelo := 'Mazda 3';
    mazda.puertas := 4;
    
    toyota.marca := 'Toyota';
    toyota.modelo := 'Prado';
    toyota.puertas := 4;
    
    imprimir_carro(mazda);
    imprimir_carro(toyota);
    
END;
/