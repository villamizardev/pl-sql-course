SET SERVEROUTPUT ON;

DECLARE
  
BEGIN
    -- ponerle nombre a los ciclos es una buena pr�ctica
    <<ciclo_prueba>>
    FOR i IN 1..10 LOOP
    
        IF(i = 5) THEN
            CONTINUE;
        END IF;
        
        dbms_output.put_line(i || ' x 2 = ' || (i*2));     
    END LOOP ciclo_prueba;
    
END;
/