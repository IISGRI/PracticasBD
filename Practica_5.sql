-- PRACTICA LABORATORIO 5

-- 1. Muestra los primeros tres caracteres del nombre
	SELECT nombre, LEFT(nombre, 3) FROM Cliente;

-- 2. Muestra los œltimos 3 caracteres del nombre
	SELECT nombre, RIGHT(nombre, 3) FROM Cliente;

-- 3. Muestra del 2do al 5to caracter del nombre
	SELECT nombre, SUBSTRING(nombre, 2, 4) FROM Cliente;

-- 4. Reemplaza las d por s en nombre
	SELECT nombre, REPLACE(nombre, d, s) FROM Cliente;

-- 5. Obten la longitud del apellido paterno
	SELECT CHAR_LENGTH(apellidop), apellido FROM Cliente;

-- 6. Muestra los nombres sin los espacios en blanco al inicio del nombre
	SELECT LTRIM(nombre) FROM Cliente;

-- 7. Muestra a los nombres que tienen espacios al final
	SELECT RTRIM(nombre) FROM Cliente;

-- 8. Muestra en mayusculas el nombre
	SELECT UPPER

-- 9. Muestra en minœsculas el apellido paterno
	

-- 10. Muestra la cantidad de caracteres del nombre
	

-- 11. Muestra a los clientes con su delegaci—n, reemplazando Benito Juarez por B. Juarez
	

-- 12. Muestra el nombre completo empezando por el apellido paterno con mayusculas
	

-- 13. Muestra el nombre completo en mayusculas empezando por el apellido paterno
	

-- 14. Muestra el nombre de los clientes con las E reemplazadas con el numero 3
	

-- 15. Muestra el nombre de los clientes con las o reemplazados con con el numero 0
	

Uso de funciones para condicionar registros
-- 1. Muestra solo a los clientes que su nombre tiene mas de 5 letras
	

-- 2. Muestra a los clientes que su nombre tiene entre 5 y 7 caracteres
	

-- 3. Muestra a los que clientes que tienen espacios en blanco al inicio del nombre
	

-- 4. Muestra solo a los clientes que tienen espacios al final del nombre
	

-- 5. Muestra solo a los clientes que tienen espacios en blanco al inicio o al final del nombre
	

Anidamiento de funciones y concatenaciones

-- 1. Muestra el nombre de los clientes reemplazando lo siguientes caracteres: E-->3, O-->0 (Desmond--> D3sm0nd)
	

-- 2. Muestra el nombre de los clientes reemplazando los siguientes caracteres A-->@,E-->3,I-->!, O-->0 ( Murcielago--> Murc!3l@g0)
	

-- 3. Convierte los primeros dos caracteres del nombre en mayœscula (Edgar-->EDgar)
	

-- 4. Convierte el ultimo caracter del nombre en mayusculas (Edgar-->EdgaR)
	

-- 5. Convierte el 3er caracter del nombre en Mayuscula (Edgar--> EdGar)
	

-- 6. Convierte el 2do y 4to car‡cter del nombre a Mayuscula(Edgar-->EDgAr)
	

-- 7. Convierte a mayusculas el  penœltimo car‡cter del nombre (Edgar-->EdgAr)
	

-- 8. Convierte a mayusculas el segundo y ultimo caracter (Armando-->ArmandO)
	

-- 9. Convierte a mayuscula el segundo y penœltimo caracter (Armando--> ArmanDo) 
	

-- 10. Convierte a mayuscula el segundo, cuarto y penœltimo caracter del nombre(Armando--> ARmAnDo)
