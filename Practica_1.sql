-- PRACTICA LABORAOTRIO 1


-- EJERCICIO 1 BD ESCUELA

CREATE TABLE profesores (
	Nombre VARCHAR(50),
	FechaNacimiento DATE,
	FechaIngreso DATE,
	Salario NUMERIC(10,2)
);

CREATE TABLE salon (
	Codigo INT,
	Descripcion VARCHAR(200)
);

CREATE TABLE alumno (
	Nombre VARCHAR(50),
	FechaNacimiento DATE,
	Promedio NUMERIC(4,2)
);


-- EJERCICIO 2 BD TALLER MECANICO

CREATE TABLE colaboradores (
	Nombre VARCHAR(50),
	FechaIngreso DATE
);

CREATE TABLE refaccion (
	Nombre VARCHAR(50),
	FechaLlegada DATE,
	FinGarantia DATE
);

CREATE TABLE auto (
	Marca VARCHAR(30),
	Modelo VARCHAR(20),
	Fallas VARCHAR(250)
);
