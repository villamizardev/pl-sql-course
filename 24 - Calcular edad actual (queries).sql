SELECT FECHANACI, EDAD_ACTUAL(fechanaci) FROM EMPLEADOS
WHERE edad_actual(fechanaci)>=35;