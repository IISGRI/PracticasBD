-- PRACTICA LABORATORIO 6

-- EJERCICIOS DE FUNCIONES DE FECHA


-- 1. Muestra la fecha actual.
	SELECT now();

-- 2. Que fecha sera dentro de una semana?
	SELECT now(), now() + cast('1 week' as interval);

-- PENDIENTE 3. Cual es la antiguedad de los clientes? (años que han pasado desde que se dieron de alta).
	SELECT nombre, age(now(), fecharegistro) FROM Cliente;

-- 4. Muestra en una columna solo el dia de la fecha de Hoy y en otra el nombre del dia de hoy.
	SELECT extract('Day' FROM now()), to_char(now(), 'Day');

-- 5. Muestra en columnas separadas al a–o, mes, dia, hora y minuto de la fecha de alta.
	SELECT nombre, extract('Year' FROM fecharegistro) as "Año", extract('Mon' FROM fecharegistro) as "Mes", extract('Day' FROM fecharegistro) as "Dia", extract('Hour' FROM fecharegistro) as "Hora", extract('Min' FROM fecharegistro)
	FROM Cliente;	 

-- 6. Si el cliente compra algo hoy a mensualidades, Cuando seran los primeros 3 pagos?
	SELECT now() as "Fecha compra", now() + cast('1 Mon' as interval) as "Primer Pago", now() + cast('2 Mon' as interval) as "Segundo Pago", now() + cast('3 Mon' as interval) as "Tercer Pago"

-- 7. Muestra la antiguedad de los Clientes en Años, meses y dias.
	SELECT nombre, age(now(), fecharegistro) FROM Cliente;

-- 8. Muestra " el día de hoy [11/03/2010]  es [Sabado] "
	SELECT 'El dia de hoy [' || extract

-- 9. Muestra " [Edgar Catalan] se dio de alta el [sabado 11/03/2010] "

-- 10. Muestra la fecha de Alta, sin mostrar la hora.

-- 11. Muestra a los Clientes que se dieron de Alta en el 2010.

-- 12. Muestra a los que dieron de alta en Diciembre de cualquier a–o.

-- 13. Muestra a los que se dieron de Alta en Febrero del 2009.

-- 14. Muestra a los que se dieron de Alta el 15 de Agosto del 2010.

-- 15. Muestra a los clientes que tienen menos de 6 meses que se dieron de alta.

-- 16. Muestra a los clientes que tienen menos de 18 a–os

-- 17. Muestra a los Clientes que hoy cumplen a–os.

-- 18. Muestra a los clientes que cumplen a–os en diciembre

-- 19. Muestra a los clientes que cumplen a–os Enero Febrero, Marzo o Abril

-- 20. Muestra a los Clientes que cumplen a–os este mes.

-- 21. Muestra a los clientes que cumplen a–os el pr—ximo mes

-- 22. Muestra a los clientes que cumplen a–os este o el pr—ximo mes

-- 23. Muestra a los clientes que cumplen a–os esta semana 

-- 24. Muestra a los clientes que cumplen a–os ma–ana

-- 25. Muestra a los clientes que cumplen a–os en cualquiera de los pr—ximos 7 d’as

-- 26. Muestra a los clientes que cumplen a–os en el pr—ximo s‡bado

-- 27. Para los clientes con una deuda de mas de 5000 pesos crea el texto " Estimado cliente [Edgar Catalan] le recordamos que al dia de hoy [11/03/2011] usted nos debe [6000] le ofrecemos la posibilidad de pagar a 6 meses con el 10% de interes, por lo que esperamos su primer pago de [1100] pesos a mas tardar el dia 11 de abril del 2011. Por su atencion Gracias".
