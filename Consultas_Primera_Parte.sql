--Seleccionar todos los clientes ordenados alfabéticamente

SELECT * FROM Clientes
ORDER BY Nombre;

--Seleccionar todos los productos ordenados alfabéticamente

SELECT * FROM Productos
ORDER BY descripcion;

--Seleccionar todos los productos cuyas existencias sean menores a 10 unidades

SELECT * FROM Productos
WHERE existencias < 10;

--Seleccionar todos los productos cuya marca sea SAMSUNG

SELECT * FROM Productos
WHERE marca = 'Samsung';

--Seleccionar todos los productos cuya marca sea SAMSUNG y la cantidad de existencias sea menor a 10 unidades

SELECT * FROM Productos
WHERE marca = 'Samsung' AND existencias < 10;

--Seleccionar todos los productos cuya marca sea SAMSUNG o PHILIPS

SELECT * FROM Productos
WHERE marca = 'Samsung' OR marca = 'Philips';

--Seleccionar todos las Categorías que cuyo nombre comiencen con "Elec"

SELECT * FROM Categorias
WHERE nombre LIKE 'ELEC%';

--Seleccionar todos los carritos que dispongan mas de 3 unidades

SELECT * FROM Carritos
WHERE unidades > 3;

--Seleccionar todos los carritos en estado ABANDONADO

SELECT * FROM Carritos
WHERE estado = 'ABANDONADO';

--Seleccionar todos los clientes con tarjeta VISA

SELECT * FROM Clientes
WHERE tarjetas = 'VISA';

--Seleccionar todos los clientes con apellido Rodriguez

SELECT * FROM Clientes
WHERE nombre LIKE '%Rodriguez';

--Seleccionar todos los clientes cuyo DNI sea mayor a 25 millones y menor a 30 millones

SELECT * FROM Clientes
WHERE dni > 25000000 AND dni < 30000000;

--Seleccionar a todos los clientes cuya característica telefónica sea de la ciudad de Tandil

SELECT * FROM Clientes
WHERE telefono LIKE '0249%';

--Seleccionar todos los carritos con estado ACTIVO y con menos de 5 unidades

SELECT * FROM Carritos
WHERE estado = 'ACTIVO' AND unidades < 5;