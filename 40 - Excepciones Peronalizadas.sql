SET SERVEROUTPUT ON;

DECLARE
    ran NUMBER := round(dbms_random.value(1,3));
    error_1 EXCEPTION;
    error_2 EXCEPTION;
    error_3 EXCEPTION;
    
BEGIN
    
    CASE
        WHEN ran = 1 THEN
            RAISE error_1;
        WHEN ran = 2 THEN
            RAISE error_2;
        WHEN ran = 3 THEN
            RAISE error_3;
    END CASE;
    
    EXCEPTION
        WHEN error_1 THEN
            dbms_output.put_line('Error 1');
        WHEN error_2 THEN
            dbms_output.put_line('Error 2');
        WHEN error_3 THEN
            dbms_output.put_line('Error 3');
    
    
END;