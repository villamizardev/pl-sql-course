/*  VENTA DE CAMISETAS 

    Declarar e inicializar las siguientes variables: Número de camisetas a vender, Monto de camisetas
    
    CALCULAR
    - Sub total a pagar = (Numero de camisetas * Monto de camisetas)
    - Calcular el 15% de impuesto sobre ventas
    - Total a pagar = SubTotal + Impuesto Sobre ventas.
*/
SET SERVEROUTPUT ON;

DECLARE
    cantidad NUMBER;
    precio NUMBER;
    subtotal NUMBER;
    impuesto NUMBER;
  
BEGIN
    cantidad := 12;
    precio:= 30000;
    subtotal := cantidad * precio;
    impuesto := 0.15 * subtotal;
    
    dbms_output.put_line('SUBTOTAL: ' || subtotal);
    dbms_output.put_line('IMPUESTO: ' || impuesto);
    dbms_output.put_line('TOTAL: ' || (subtotal + impuesto));
 
END;
/