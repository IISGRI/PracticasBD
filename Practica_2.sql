----------------------------------------------------------------------------------------------
-- Ejercicio 1 TABLA ALUMNOS

-- [A] DAR DE ALTA 3 ALUMNOS
INSERT INTO Alumnos (IdAlumno, Nombre, ApPaterno, ApMaterno, Promedio, FechaIngreso)
	VALUES  (2010300294, 'Jenipher', 'Garcia', 'Montez', 10, '2010 02 02'),
			(2012309276, 'Brandon', 'Garcia', 'Ruiz', 9, '2011 08 05'),
			(2025301892, 'Brenda', 'Alcantara', 'Lopez', 8.2, '2025 01 05');
	
-- [B] MODIFICA LA CALIFICACION DE 2 ALUMNOS
UPDATE Alumnos
	SET Promedio = 9.1
	WHERE IdAlumno = 2010850294; -- Jenipher

UPDATE Alumnos
	SET Promedio = 7.3
	WHERE IdAlumno = 2012301892; -- Brenda

-- [C] MODIFICA LA FECHA DE INGRESO DE 2 ALUMNOS
UPDATE Alumnos
	SET FechaIngreso =  '2026 08 17'
	WHERE IdAlumno = 2012309276; -- Brandon
	
UPDATE Alumnos
	SET FechaIngreso = '2007 08 14'
	WHERE IdAlumno = 2010300294; -- Jenifer

-- [D] ELIMINA A UNO DE LOS ALUMNOS
DELETE FROM Alumnos
	WHERE IdAlumno = 2025301892; -- Brenda


----------------------------------------------------------------------------------------------
-- Ejercicio 2 TABLA AUTO modelo, marca, color y placas.

-- [A] DA DE ALTA 4 AUTOS DIFERENTES
INSERT INTO Auto (Modelo, Marca, Color, Placa)
	VALUES  ('Camry', 'Toyota', 'Gris', 'MKR-048-A'),
			('93', 'Saab', 'Gris', 'IDL-953-F'),
			('M4', 'BMW', 'Azul', 'MLS-191-C'),
			('Tiguan', 'VolksWagen', 'Blanco', 'XPV-381-B');
	
-- [B] MODIFICA EL COLOR DE UNO DE LOS CARROS REGISTRADOS
UPDATE Auto
	SET Color = 'Negro'
	WHERE Modelo = '93';

-- [C] ELIMINAR 2 CARROS
DELETE FROM Auto
	WHERE Placa = 'MKR-048-A';
	
DELETE FROM Auto
	WHERE Placa = 'IDL-953-F';


----------------------------------------------------------------------------------------------
-- Ejercicio 3 TABLA MATERIA

-- [A] REGISTRAR MATERIAS Y ELIMINAR
INSERT INTO Materia (IdMateria, Nombre, Nivel, Creditos)
	VALUES  ('B101', 'Matematicas', '1', 8),
			('B102', 'Fisica', '1', 8),
			('B103', 'Español', '1', 8),
			('B201', 'Quimica', '2', 10),
			('B202', 'Ingles', '2', 10),
			('B203', 'Programacion', '2', 10);

DELETE FROM Materia
	WHERE Materia = 'Ingles';
	
DELETE FROM Materia
	WHERE Materia = 'Quimica';

-- [B] ACTUALIZAR CREDITOS DE MATERIAS DE PRIMER NIVEL
UPDATE Materia
	SET Creditos = 8.5
	WHERE Nivel = '1';
	
-- [C] ELIMINAR MATERIAS DE PRIMER NIVEL
DELETE FROM Materia
	WHERE Nivel = '1';

-- [D] AGREGAR MATERIA DE TERCER NIVEL
INSERT INTO Materia (IdMateria, Nombre, Nivel, Creditos)
	VALUES ('B301', 'Calculo', '3', 10);
