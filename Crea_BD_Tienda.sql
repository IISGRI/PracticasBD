-- Script que crea la base de datos para una tienda de electronicos y añade distintos registros

-- CREA BASE DE DATOS TIENDA
CREATE TABLE PRODUCTO(
	IdProducto SERIAL PRIMARY KEY,
	IdProveedor INT,
	Nombre VARCHAR(50),
	PrecioCompra NUMERIC(10,2),
	PrecioSugerido NUMERIC(10,2),
	PrecioMinimo NUMERIC(10,2),
	Descripcion VARCHAR(400),
	CodigoBarras VARCHAR(20),
	Existencia INT
);

CREATE TABLE PROVEEDOR(
	IdProveedor SERIAL PRIMARY KEY,
	Nombre VARCHAR(50)
);

CREATE TABLE VENTA(
	IdVenta SERIAL PRIMARY KEY,
	IdCliente INT,
	Fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE PRODUCTOVENDIDO(
	IdProductoVendido SERIAL PRIMARY KEY,
	IdProducto INT,
	Cantidad INT,
	IdVenta INT,
	PrecioVenta NUMERIC(10,2)
);

CREATE TABLE CLIENTE(
	IdCliente SERIAL PRIMARY KEY,
	Nombre VARCHAR(40),
	ApellidoP VARCHAR(30),
	ApellidoM VARCHAR(30),
	FechaRegistro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FechaNacimiento DATE,
	Telefono VARCHAR(15),
	RFC CHAR(13),
	CorreoElectronico VARCHAR(100),
	Pais VARCHAR(50),
	Estado VARCHAR(50),
	Alcaldia VARCHAR(50),
	Colonia VARCHAR(50),
	Calle VARCHAR(50),
	NumeroI VARCHAR(10),
	NumeroE VARCHAR(10),
	CodigoPostal CHAR(5),
	Credito NUMERIC(10,2),
	Deuda NUMERIC(10,2)
);

-- [A] REGISTRAR A 10 CLIENTES
INSERT INTO CLIENTE (IdCliente, Nombre, ApellidoM, ApellidoP, FechaRegistro, FechaNacimiento, Telefono, RFC, CorreoElectronico, Pais, Estado, Alcaldia, Colonia, Calle, NumeroI, NumeroE, CodigoPostal, credito, deuda)
VALUES 
(1, 'Jose', 'Alvarado', 'Gonzales', CURRENT_TIMESTAMP, '1992-04-23', '5532782945', 'ALGJ920423CJ6', 'jose8374@gmail.com', 'Mexico', 'CDMX', 'Gustavo A. Madero', 'Zacatenco', 'La Rioja', 'S/N', '17', '07384', 45000, 6700),
(2, 'Carlos', 'López', 'Ramírez', CURRENT_TIMESTAMP, '1990-05-14', '5512345678', 'LORC900514HDF', 'carlos.lopez@gmail.com', 'México', 'CDMX', 'Iztapalapa', 'Iztapalapa', 'Ermita', NULL, 74, 09800, 3000.00, 0.00),
(3, 'Ana', 'Martínez', 'Hernández',	CURRENT_TIMESTAMP, '1987-08-22', '5623456789', 'MAHA87082298B', 'ana.martinez@outlook.com', 'México', 'CDMX', 'Benito Juárez', 'Centro', 'Hidalgo', '2B', 145, 06000, 5000.00, 1200.00),
(4, 'Alfonso', 'Sánchez', 'Gómez', CURRENT_TIMESTAMP, '1995-11-02', '5534567890', 'SAGB951102356', 'brandon.sanchez@outlook.com', 'México', 'Edomex', 'Naucalpan', 'Roma Norte', 'Durango', NULL, 32, 06700, 7500.00, 0.00),
(5, 'Jenifer', 'García', 'Torres', CURRENT_TIMESTAMP, '1992-01-19', '5645678901', 'GATJ920119C04', 'jenifer.garcia@outlook.com', 'México', 'CDMX', 'Coyoacán', 'Del Valle', 'Insurgentes Sur', '5A', 10, 03100, 10000.00, 3500.00),
(6, 'Luis', 'Pérez', 'Domínguez', CURRENT_TIMESTAMP, '1985-07-30', '2226789012', 'PEDL850730N8W', 'luis.perez@gmail.com', 'México', 'Puebla', 'Puebla Centro', 'Narvarte', 'Xola', NULL, 45, 03020, 6000.00, 6000.00),
(7, 'Martha', 'Flores', 'Vega', CURRENT_TIMESTAMP, '1998-03-25', '5667890123', 'FOVM980325BUN', 'martha.flores@outlook.com', 'México', 'CDMX', 'Álvaro Obregón', 'Polanco', 'Masaryk', '1', 78, 11560, 15000.00, 2000.00),
(8, 'Jorge', 'Ruiz', 'Castillo', CURRENT_TIMESTAMP, '1993-09-10', '3378901234', 'RUJC93091035N', 'jorge.ruiz@gmail.com', 'México', 'Jalisco', 'Guadalajara', 'Santa María la Ribera', 'Cedro', NULL, 12, 06400, 4000.00, 500.00),
(9, 'Sofía', 'Ramírez', 'Morales', CURRENT_TIMESTAMP, '2000-12-05', '8189012345', 'RASM001205MDF', 'sofia.ramirez@gmail.com', 'México', 'Nuevo León', 'Monterrey', 'Coyoacán', 'Miguel Ángel de Quevedo', '3C', 91, 04000, 8000.00, 1000.00),
(10, 'Melanie', 'Bautista', 'Alcantara', CURRENT_TIMESTAMP, '1984-12-06', '7723983940', 'BAAM841206I64', 'melanie25.d@outlook.com', 'Mexico', 'Hidalgo', 'Pachuca de Soto', 'San Ángel', 'Revolución', '4', 13, 01000, 9000.00, 4500.00);
	
-- [B] REGISTRAR PROVEEDORES
INSERT INTO PROVEEDOR (IdProveedor, Nombre)
	VALUES  (1, 'LG'),
			(2, 'Yamaha'),
			(3, 'Samsung'),
			(4, 'Sony'),
			(5, 'Dell'),
			(6, 'HP');
			
-- [C] REGISTRAR PRODUCTOS
INSERT INTO PRODUCTO (Idproducto, IdProveedor, Nombre, Existencia, PrecioSugerido, PrecioMinimo, PrecioCompra)
	VALUES  (1, 1, 'Tele', 30, 5000,4000, 3000),
			(2, 1, 'DVD', 20, 1500, 1000, 900),
			(3, 1, 'Celular', 3, 2000,2000, 1200),
			(4, 2, 'Pantalla', 5, 15000,14000, 10000),
			(5, 2, 'BlueRay', 10, 5500,5300, 5000),
			(6, 3, 'Mp3 Player', 13, 900, 900, 500),
			(7, NULL, 'Compu', 15, 19000, 17000, 115000);
			
-- [D] REGISTRAR LAS VENTAS
-- VENTA 1
INSERT INTO VENTA (IdVenta, IdCliente, Fecha)
	VALUES (1, 2, '2020/09/15 14:37:26');

INSERT INTO PRODUCTOVENDIDO (IdProductoVendido, IdProducto, Cantidad, IdVenta, PrecioVenta)
	VALUES  (1, 3, 2, 1, 2000),
			(2, 6, 1, 1, 900),
			(3, 5, 3, 1, 5500);

-- VENTA 2  
INSERT INTO VENTA (IdVenta, IdCliente, Fecha)
	VALUES (2, 5, '2020/09/17 09:18:53');
	
INSERT INTO PRODUCTOVENDIDO (IdProductoVendido, IdProducto, Cantidad, IdVenta, PrecioVenta)
	VALUES  (4, 5, 2, 2, 5500),
			(5, 1, 1, 2, 5000);

-- VENTA 3
INSERT INTO VENTA (IdVenta, IdCliente, Fecha)
	VALUES  (3, 2, '2020/09/17 13:15:07');
	
INSERT INTO PRODUCTOVENDIDO (IdProductoVendido, IdProducto, Cantidad, IdVenta, PrecioVenta)
	VALUES (6, 4, 2, 3, 15000);
