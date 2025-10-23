--------------------------------------------------------------------------               
-- 1. Muestra el texto fijo Hola humano y el numero 5000
	SELECT 'Hola Humano', '5000';
	
-- 2. Muestra el nombre de los clientes
	SELECT Nombre 
	FROM Cliente;
	
-- 3. Muestra el texto fijo Hola y el nombre de los clientes
	SELECT 'Hola' ||' '|| nombre as "Saludo"
	FROM Cliente;

-- 4. Muestra el nombre de los clientes y el numero 300
	SELECT nombre, '300'
	FROM Cliente;

-- 5. Muestra el texto hola, el nombre del cliente y el numero 0
	SELECT 'Hola', nombre, '0'
	FROM Cliente;

-- 6. Muestra apellido paterno, materno y nombre de los clientes
	SELECT ApellidoP, ApellidoM, Nombre
	FROM Cliente;

-- 7. Muestra nombre, apellido paterno y materno de los clientes
	SELECT Nombre, ApellidoP, ApellidoM
	FROM Cliente;

-- 8. Muestra Id, nombre, apellido paterno y rfc de los clientes
	SELECT Idcliente, Nombre, ApellidoP, rfc
	FROM Cliente;

-- 9. Muestra apellido paterno y los datos de dirección de los clientes
	SELECT ApellidoP, Calle, NumeroE, Colonia, CodigoPostal, Alcaldia, Estado
	FROM Cliente;

-- 10. Muestra apellido paterno, materno, nombre, su cr�dito y deuda de los clientes
	SELECT ApellidoP, ApellidoM, Nombre, Credito, Deuda
	FROM Cliente;

-- 11. Muestra el nombre de los proveedores
	SELECT Nombre
	FROM Proveedore;

-- 12. Muestra todos los datos de los clientes
	SELECT * FROM Cliente;

-- 13. Muestra el nombre los productos
	SELECT Nombre FROM Producto;

-- 14. Muestra el nombre y precio sugerido de venta de los productos
	SELECT Nombre, PrecioSugerido
	FROM Producto;

-- 15. Muestra el nombre, precio de compra y precio sugerido de venta de los productos
	SELECT Nombre, PrecioCompra, PrecioSugerido
	FROM Producto;




USO DE ALIAS PARA PONER TITULOS EN LAS COLUMNAS


-- 1. Cambia el titulo de la columna codpost a CODIGO POSTAL de los clientes
	SELECT CodigoPostal as "CODIGO POSTAL"
	FROM Cliente;

-- 2. Muestra el RFC como REGISTRO FEDERAL DE CONTRIBUYENTES en la tabla de clientes
	SELECT rfc as "Registro Federal del Contribuyente"
	FROM Cliente;

-- 3. Muestra  apellido paterno como A.paterno, el apellido materno como A. Materno y el nombre de los clientes
	SELECT ApellidoP as "A.Paterno", ApellidoM as "A.Materno", Nombre
	FROM Cliente;

-- 4. muestra país como pais de origen, nombre y el rfc como registro de contribuyentes de los clientes
	SELECT pais as "País de origen", nombre, rfc as "Registro Federal del Contribuyente"
	FROM Cliente;

-- 5. Muestra el nombre, la deuda y el numero 1000 con el titulo pago a deuda
	SELECT Nombre, Deuda, 1000 as "Abono a deuda"
	FROM Cliente;

-- 6. Muestra el nombre, el precio sugerido de venta como P. VENTA y la existencia de los productos
	SELECT nombre, preciosugerido as "P. VENTA", existencia
	FROM Producto;

-- 7. Muestra el nombre, el precio sugerido de venta con el titulo P. Venta y el numero 30 con el titulo DESCUENTO
	SELECT nombre, '$' || ' ' || preciosugerido as "P. Venta", 30 as "DESCUENTO"
	FROM Producto;

-- 8. Muestra el nombre del producto 
	SELECT nombre
	FROM Producto;

-- 9. Muestra el Nombre con el titulo producto, la existencia, el numero 10 con el titulo cantidad solicitada y el precio sugerido de venta con el titulo P.Sugerido de los productos.
	SELECT nombre as "Producto", existencia, '10' as "Cantidad Solicitada", preciosugerido as "P.Sugerido"
	FROM Producto;

-- 10. Muestra el nombre con el titulo PROVEEDOR de los proveedores
	SELECT nombre as "PROVEEDOR"
	FROM Proveedor;


--COLUMNAS GENERADAS

Nota. Lo que esta entre corchetes son datos obtenidos de la BD u operaciones con estos y debe generarse la frase en cuesti�n para todos los registros de la tabla correspondiente


-- 1. Muestra el nombre completo de los clientes
	SELECT Nombre || ' ' || ApellidoP || ' ' || ApellidoM AS "Nombre completo"
	FROM Cliente;

-- 2. Muestra el nombre con el apellido paterno
	SELECT Nombre || ' ' || ApellidoP AS "Nombre con apellido"
	FROM Cliente;

-- 3. Muestra el nombre completo empezando por el apellido paterno
	SELECT ApellidoP || ' ' || ApellidoM || ' ' || Nombre AS "Nombre completo"
	FROM Cliente;

-- 4. Muestra "El cliente [Edgar] se apellida [Catalan].
	SELECT 'El cliente ' || nombre || ' se apellida ' || ApellidoP as "Apellido de Clientes"
	FROM Cliente;

-- 5. Muestra "[Edgar] vive en [Iztacalco]".
	SELECT nombre || ' vive en ' || Colonia as "Colonia donde vive"
	FROM Cliente;

-- 6. Muestra el resultado de credito-deuda como "Credito disponible".
	SELECT '$ ' || credito-deuda as "Credito Disponible"
	FROM Cliente;

-- 7. Cuanto seria el 15% de la deuda de cada cliente.
	SELECT '$ ' || deuda as "Deuda", '$ ' || TRUNC(deuda*.15,2) as "15%"
	FROM Cliente;

-- 8. Muestra al cliente, su deuda, el 10% de su deuda y su deuda con ese incremento.
	SELECT nombre, '$ ' || deuda as "Deuda", '$ ' || TRUNC(deuda*.10,2) as "10%", '$ ' || TRUNC(deuda*1.10,2) as "Total"
	FROM Cliente;

-- 9. �Cuanto tendr�a que el cliente mensualmente si se le ofrece pagar su deuda a 6 meses?
	SELECT nombre, '$ ' || deuda as "Deuda", '$ ' || TRUNC(deuda/6,2) as "6 Mensualidades"
	FROM Cliente;

-- 10. Cuanto tendria que pagar el cliente por mes a 6,12 y 24 meses para cubrir su deuda.
	SELECT nombre, '$ ' || deuda as "Deuda", '$ ' || TRUNC(deuda/6,2) as "6 Mensualidades", '$ ' || TRUNC(deuda/12,2) as "12 Mensualidades", '$ ' || TRUNC(deuda/24,2) as "24 Mensualidades"
	FROM Cliente;

-- 11.Muestra el nombre completo del cliente, su deuda y las mensualidades a 6 meses con un cargo del 10%
	SELECT nombre || ' ' || apellidop || ' ' ||  apellidom as "Nombre", '$ ' || deuda as "Deuda", '$ ' || TRUNC((deuda*1.10)/6,2) as "6 Mensualidades", '$ ' || TRUNC(deuda*1.1,2) as "Total a Pagar"
	FROM Cliente;

-- 12. Si se le aplica un descuento del 30% ¿Cuanto tendria que pagar el cliente?
	SELECT Nombre, '$ ' || deuda as "Deuda", '$ ' || TRUNC(deuda*.7,2) as "Deuda con 30% de descuento"
	FROM Cliente;

-- 13. De cuanto serian las mensualidades de la deuda restante a 6,12 y 24 meses, si primero se da un anticipo del 30%
	SELECT Nombre, '$ ' || deuda as "Deuda", '$ ' || TRUNC(deuda*.3,2) as "Anticipo de 30%", '$ ' || TRUNC((deuda*.7)/6,2) as "6 Mensualidades", '$ ' || TRUNC((deuda*.7)/12,2) as "12 Mensualidades", '$ ' || TRUNC((deuda*.7)/24,2) as "24 Mensualidades"
	FROM Cliente;

-- 14. Muestra "El credito de [Edgar] es [5000]"
	SELECT 'El crédito de ' || Nombre || ' es $ ' || credito as "Informacion Credito"
	FROM Cliente;

-- 15. Muestra "[Edgar] tiene un credito de[5000] y debe[3000], por tanto puede pedir otro credito de hasta[credito-deuda]
	SELECT nombre || ' tiene un credito de $ ' || credito || ' y debe $ ' || deuda || ' por tanto puede pedir otro credito de hasta $ ' || credito-deuda as "Informacion uso de credito"
	FROM Cliente;

-- 16. Muestra "[Edgar] en un credito a 6 meses tiene que pagar un total de [12000]por tanto pagara mensulamente[2000]"
	SELECT Nombre || ' en un credito a 6 meses tiene que pagar un total de $' || credito-deuda || ' por tanto pagara 6 mesualidades de $ ' || TRUNC((credito-deuda)/6,2) as "Proyeccion Pago en Mensualidades"
	FROM Cliente;

-- 17. Muestra "Estimado cliente [Edgar Catalan], le recordamos que tiene una deuda de [10000] pesos, le ofrecemos la posibilidad de pagar el 40% ([4000] pesos) y el resto a 6 meses con el 10% de interes, quedando en [1100] pesos mensuales  "
	SELECT 'Estimado cliente ' || nombre || ' le recordamos que tiene una deuda de $ ' || deuda || ' pesos, le ofrecemos la posibilidad de pagar el 40% ($' || deuda*.4 || ' pesos) y el resto a 6 meses con el 10% de interes, quedando en $ ' || TRUNC(((deuda*.6)*1.1)/6, 2) || ' pesos mensuales' as "Oportunidad de Liquidacion"
	FROM Cliente;

-- 18. Muestra: "El producto [Tele] se vende en [15000]" 
	SELECT 'El producto ' || nombre || ' se vende en $ ' || preciosugerido as "Precios"
	FROM Producto;

-- 19. Muestra: "El producto [Tele] nos cuesta [5000] y se vende en [15000], por lo que su ganancia es de [PrecioVenta-PrecioCompra] "
	SELECT 'El producto ' || nombre || ' nos cuesta $ ' || preciocompra || ' y se vende en $ ' || preciosugerido || ', por lo que su ganancia es de $ ' || preciosugerido-preciocompra as "Margen de ganancia"
	FROM Producto;

-- 20. Si resurtimos 10 [Televisiones] con el ultimo precio de compra: [5000] nos costar�a  :[50000]
	SELECT 'Si resurtimos 10 ' || nombre || ' con el precio de compra por unidad: $ ' || preciocompra || ', nos costara: $ ' || preciocompra*10 as "Costo de Reabastecimiento"
	FROM Producto;
