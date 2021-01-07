SET SERVEROUTPUT ON;

DECLARE
  x NUMBER := 10;
BEGIN

    LOOP
        dbms_output.put_line(x);
        x:=x+10;
        
        IF(x > 120) THEN
            EXIT;
        END IF;
        
    END LOOP;
    
END;
/