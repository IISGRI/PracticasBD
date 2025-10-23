-- PRACTICA LABORATORIO 4  16/10/2025

-- SELECCION DE REGISTROS
-- EJERCICIOS

--1. Los clientes con el nombre de Edgar
    SELECT * FROM cliente
    WHERE nombre = 'Edgar';

--2. Los clientes que no se llamen Edgar
    SELECT * FROM cliente
    WHERE nombre != 'Edgar';

--3. Los clientes con un credito mayor a 5000
    SELECT * FROM cliente
    WHERE credito > 5000;

--4. Los clientes con un credito menor a 5000
    SELECT * FROM cliente
    WHERE credito < 5000;

--5. Los clientes de la Delegacion Iztacalco
    SELECT * FROM cliente
    WHERE alcaldia = 'Iztacalco';

--6. Los productos con un precio sugerido de mas de 5000
    SELECT * FROM producto
    WHERE preciosugerido >= 5000;

--7. Los productos de los que nos queden menos de 5
    SELECT * FROM producto
    WHERE existencia < 5;

--8. Los clientes cuyo pago mensual a 6 meses sea mayor a 1000
    SELECT * FROM cliente
    WHERE deuda/6 > 1000;

--9. Los clientes cuyo crŽdito disponible (CrŽdito- Deuda), sea menor o igual a 3000
    SELECT * from cliente
    WHERE credito-deuda <= 3000;

--10. Los clientes a los que su deuda incremŽntada en 20% sea mayor a 20000
    SELECT * FROM cliente
    WHERE deuda*1.20 > 20000;

--11. Los clientes que si dan un anticipo del 20%, su deuda es menor de 10000
    SELECT * FROM cliente
    WHERE deuda*.8 < 10000;  




-- SELECCION DE NULOS
-- EJERCICIOS 

--1. Muestra a los clientes que todavia no tienen asignado credito
	SELECT nombre, credito FROM CLiente
	WHERE Credito is NULL; 

--2. Muestra a los clientes que nos falta su RFC
	SELECT nombre, rfc FROM Cliente
	WHERE rfc is NULL;

--3. Muestra a los clientes que no tienen apellido materno
	SELECT nombre, apellidom FROM Cliente
	WHERE apellidom is NULL;

--4. Muestra solo a los clientes que si tienen asignado un RFC
	SELECT nombre, rfc FROM Cliente
	WHERE rfc is not NULL;

--5. Muestra solo a los clientes que si tienen correo electr—nico registrado
	SELECT nombre, correoelectronico FROM Cliente
	WHERE correoelectronico in not NULL;

--6. Muestra solo a los productos que si tienen precio sugerido de venta
	SELECT * FROM Producto
	WHERE preciosugerido is not NULL;

--7. Muestra a los clientes que no tienen delegaci—n especificada  
	SELECT nombre, alcaldia FROM Cliente
	WHERE alcaldia is NULL;




-- SELECCION CON OPERADORES LOGICOS
-- EJERCICIOS

--1. Los clientes que no viven en Iztacalco
	SELECT nombre, alcaldia FROM Cliente
	WHERE not alcaldia = 'Iztacalco';

--2. Los clientes que no se llaman Edgar
	SELECT nombre FROM Cliente
	WHERE not nombre = 'Edgar';

--3. Los que se llaman Edgar o Juan
	SELECT nombre FROM Cliente
	WHERE nombre = 'Edgar' or nombre = 'Juan';

--4. Los que NO se llaman Edgar o Juan
	SELECT nombre FROM Cliente
	WHERE not (nombre = 'Edgar' or nombre = 'Juan');

--5. Los que tienen un credito entre 5000 y 10000
	SELECT nombre FROM Cliente
	WHERE credito > 5000 and credito < 1000;

--6. Los que NO tienen un credito entre 5000 y 10000
	SELECT credito FROM Cliente
	WHERE not (credito > 5000 and credito < 1000);

--7 Los que se llamen Edgar y su apellido paterno es  Catalan
	SELECT nombre FROM Cliente
	WHERE not (nombre = 'Edgar' and apellidop = 'Catalan');

--8. Los que su apellido paterno es Catalan y NO se llaman Edgar
	SELECT nombre FROM Cliente
	WHERE apellidop = 'Catalan' and (not nombre = 'Edgar');

--9. Los que se llaman Blanca o su apellido paterno es Catalan
	SELECT nombre, apellido FROM Cliente
	WHERE nombre = 'Blanca' or apellidop = 'Catalan';

--10. Los que cualquiera de sus apellidos es catal‡n
	SELECT nombre, apellidop, apellidop FROM Cliente
	WHERE apellidop = 'Catalan' or apellidom = 'Catalan';

--11. Los que ninguno de sus apellidos es catal‡n
	SELECT nombre, apellidop, apellidom FROM Cliente
	WHERE not (apellidop = 'Catalan' or apellidom = 'Catalan');

--12. Los que su apellido paterno es Catalan o Perez
	SELECT nombre, apellidop FROM Cliente
	WHERE apellidop = 'Catalan' or apellidop = 'Perez';

--13. Los que su apellido paterno es catal‡n, Perez o Garcia
	SELECT nombre, apellidop FROM Cliente
	WHERE apellidop = 'Catalan' or apellidop = 'Perez' or apellidop = 'Garcia';

--14. Los que cualquiera de sus apellidos es Catalan o Perez
	SELECT nombre, apellidop, apellidom FROM Cliente
	WHERE apellidop = 'Catalan' or apellidop = 'Perez' or apellidom = 'Catalan' or apellidom = 'Perez';

--15. Los que se llaman Edgar y su apellido paterno es Catal‡n o Perez
	SELECT nombre, apellidop FROM Cliente
	WHERE nombre = 'Edgar' and (apellidop = 'Catalan' or apellidop = 'Perez');

--16. Los que se llaman Edgar y su apellido paterno NO sea Catal‡n o Perez
	SELECT nombre, apellidop FROM Cliente
	WHERE nombre = 'Edgar' and not(apellidop = 'Catalan' or apellidop = 'Perez');

--17. Los de la Alcaldia Iztacalco, GAM y bendito Juarez
	SELECT nombre, alcaldia FROM Cliente
	WHERE alcaldia = 'Iztacalco' or alcaldia = 'Gustavo A. Madero' or alcaldia = 'Benito Juarez';

--18. Los de Iztacalco y GAM que su apellido paterno sea catal‡n
	SELECT nombre, apellidop, alcaldia FROM Cliente
	WHERE apellidop = 'Catalan' and (alcaldia = 'Iztacalco' or alcaldia = 'Gustavo A. Madero');

--19. Los que viven en Iztacalco y su credito esta en 5000 y 10000
	SELECT nombre, alcaldia, credito FROM Cliente
	WHERE credito between 5000 and 10000;

--20. Los que viven en Iztacalco o Coyoacan y su deuda esta en 10000 y 20000
	SELECT nombre, alcaldia, deuda FROM Cliente
	WHERE (alcaldia = 'Iztacalco' or alcaldia = 'Coyoacan') and (deuda between 10000 and 20000);

--21. Los de Iztacalco y GAM que cualquiera de sus apellidos sea catal‡n 
	SELECT nombre, apellidop, apellidop, alcaldia FROM Cliente
	WHERE (alcaldia = 'Iztacalco' or alcaldia = 'Gustavo A. Madero') and (apellidop = 'Catalan' or apellidom = 'Catalan');

--22. Los que se llaman Edgar y cualquiera de sus apellidos sea catal‡n o Perez
	SELECT nombre, apellidop, apellidom FROM Cliente
	WHERE nombre = 'Edgar' and (apellidop = 'Catalan' or apellidop = 'Perez' or apellidom = 'Catalan' or apellidom = 'Perez');

--23. Los que se llaman Edgar y ninguno de sus apellidos sea catal‡n o Perez
	SELECT nombre, apellidop, apellidom FROM Cliente
	WHERE nombre = 'Edgar' and not(apellidop = 'Catalan' or apellidop = 'Perez' or apellidom = 'Catalan' or apellidom = 'Perez');

--24. Los de la Alcaldia Iztacalco que su pago mensual a 6 meses sea mayor o igual a 1000
	SELECT nombre, alcaldia, deuda/6 as "Pago Mensual [6meses]" FROM Cliente
	WHERE alcaldia = 'Iztacalco' and deuda/6 >= 1000;

--25. Los de la Alcaldia Iztacalco que no tengan crŽdito asignado
	SELECT nombre, alcaldia FROM Cliente
	WHERE alcaldia = 'Iztacalco' and credito is NULL;

--26. Los de la Alcaldia Iztacalco con un crŽdito disponible( CrŽdito-Deuda) mayor a 10000
	SELECT nombre, alcaldia, credito-deuda as "Credito disponible" FROM Cliente
	WHERE alcaldia = 'Iztacalco' and credito-deuda >= 10000;

--27. Los de la Alcaldia Iztacalco que no tengan apellido materno o crŽdito asignado
	SELECT nombre, alcaldia, apellidom, credito FROM Cliente
	WHERE alcaldia = 'Iztacalco' and (apellidom is NULL or credito is NULL); 

--28. Los de la delegaciones GAM e Iztacalco que no tengan apellido materno o crŽdito asignado
	SELECT nombre, apellidom, alcaldia, credito FROM Cliente
	WHERE (alcaldia = 'Iztacalco' or alcaldia = 'Gustavo A. Madero') and (apellidom is NULL or credito is NULL); 




-- OPERADORES ESPECIALES
-- EJERCICIOS

--1. Credito entre 5000 y 10000 con between
	SELECT nombre, credito FROM Cliente
	WHERE credito between 5000 and 10000;

--2. Los de la delegacion Iztacalco, Coyoacan o Benito Juarez
	SELECT nombre, delegacion FROM Cliente
	WHERE alcaldia in ('Iztacalco', 'Coyoacan', 'Benito Juarez');

--3. Los que su deuda este entre 10000 y 15000 y su pago mensual a 12 meses este entre 500 y 1000
	SELECT nombre, deuda, deuda/12 as "Pago Mensual [12meses]" FROM Cliente
	WHERE (deuda between 10000 and 15000) and (deuda/12 between 500 and 1000);

--4. Los de la delegacion Iztacalco, Coyoacan o Benito Juarez y que su deuda este entre 10000 y 15000
	SELECT nombre, alcaldia, deuda FROM Cliente
	WHERE alcaldia in ('Iztcalco', 'Coyoacan', 'Benito Juarez') and deuda between 10000 and 15000;

--5. Los de la delegacion Iztacalco, Coyoacan o Benito Juarez y su apellido paterno sea Catalan
	SELECT nombre, alcaldia, deuda FROM Cliente
	WHERE alcaldia in ('Iztcalco', 'Coyoacan', 'Benito Juarez') and apellidop = 'Catalan';

--6. Los de la delegacion Iztacalco, Coyoacan o Benito Juarez y cualquiera de sus apellidos sea Catalan
	SELECT nombre, alcaldia, deuda FROM Cliente
	WHERE alcaldia in ('Iztcalco', 'Coyoacan', 'Benito Juarez') and (apellidop = 'Catalan' or apellidom = 'Catalan');

--7. Los de la delegacion Iztacalco, Coyoacan o Benito Juarez y cualquiera de sus apellidos sea Catalan, Perez o Garcia
	SELECT nombre, alcaldia, deuda FROM Cliente
	WHERE alcaldia in ('Iztcalco', 'Coyoacan', 'Benito Juarez') and (apellidop in ('Catalan', 'Perez', 'Garcia') or apellidom in ('Catalan', 'Perez', 'Garcia'));




-- EJERCICIOS BUSQUEDA DE PATRONES
-- EJERCICIOS	

--1. Los clientes que se llamen Edgar sin importar que tengan 2 nombres
	

--2. los clientes que su segundo caracter sea una "d"
	

--3. Los que empiecen con una vocal
	

--4. Los que no empiecen con  vocal
	

--5.Los que su nombre termine con 'r' 
	

--6.los que empiecen con una vocal y terminen con h
	

--7. Los que su tercer caracter sea una G
	

--8. los que su primer caracter sea 'E' y el 4 sea 'a'
	

--9. Los que tengan por lo menos una 'E' en su nombre
	

--10. Los que tengan dos 'E'
	

--11. Los que tengan por lo menos 2 vocales
	

--12.Los que tengan menos de 2 vocales
	

--13.Los que se llamen edgar y su apellido paterno empiece con 'C'
	

--14.los que se llamane Edgar y Cualquiera de sus apellidos empiece con'C'
	

--15.Los clientes que su apellido empiece con la primera mitad del alfabeto [a-m]
	

--16.Los clientes que su apellido paterno empiece con la segunda mitad del alfabeto [n-z]
	

--17.Los clientes que su apellido empiece con la primera mitad del alfabeto [a-m] pero que no empiecen ni con A ni con E
	

--18.Los clientes que su apellido paterno empiece con la segunda mitad del alfabeto [n-z] con un credito mayor a 10000
	

--19.Los clientes que su apellido paterno empiece con la segunda mitad del alfabeto [n-z] que tengan un credito mayor a 10000 y que la mensualidad a pagar a 6 meses sea mayor a 1000
	

--20.Los clientes que su nombre empiece con E y su penultimo caracter sea A (Edgar)
	

--21.Los clientes que su nombre empiece con E, su cuarto caracter sea Z y el antepenultimo sea una vocal (Elizabeth )
	

--22.Los que tengan 2 o mas nombres
	
