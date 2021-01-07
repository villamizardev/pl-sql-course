CREATE OR REPLACE FUNCTION edad_actual(fecha_nacimiento IN DATE)
RETURN NUMBER IS edad NUMBER(3):=0;

BEGIN
    edad := TRUNC((to_number(to_char(sysdate, 'yyyymmdd')) - to_number(to_char(fecha_nacimiento, 'yyyymmdd')))/10000);
    RETURN edad;
    
    EXCEPTION
    WHEN OTHERS THEN
        edad := 0;
    RETURN edad;
    
END;
/