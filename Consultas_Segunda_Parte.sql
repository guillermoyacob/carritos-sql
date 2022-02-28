--Listar nombre de producto y categoría para todos los productos

SELECT descripcion, Categorias_id
FROM Productos;

--Listar nombre de producto, categoría y tipo de producto para todos los productos

SELECT descripcion, Categorias_id, Tipo_Producto_Id
FROM Productos;

--Listar nombre de producto y categoría para todos los productos cuya categoría sea ELECTRÓNICA

SELECT descripcion, Categorias_Id
FROM Productos
WHERE Categorias_Id = 1;

--Listar nombre de producto y categoría para todos los productos cuya categoría sea ELECTRÓNICA y cuyo precio no supere los $ 10.000,00

SELECT descripcion, Categorias_Id
FROM Productos
WHERE Categorias_Id = 1 AND precio < 10000;

--Listar todos los productos cuyas existencias no superen las 10 unidades de la categoría ELECTRÓNICA

SELECT *
FROM Productos
WHERE Categorias_Id = 1 AND existencias < 10;

--Listar los nombres de los productos y que estén relacionados con carritos ABANDONADOS

SELECT descripcion
FROM Productos
JOIN Carritos ON Productos.sku = Carritos.Productos_sku
WHERE estado = 'ABANDONADO';

--Listar los nombres de los productos y que estén relacionados con carritos ABANDONADOS y las unidades en el carrito sean mayor que 2

SELECT descripcion
FROM Productos
JOIN Carritos ON Productos.sku = Carritos.Productos_sku
WHERE estado = 'ABANDONADO' AND unidades > 2;

--Listar los nombres de los clientes, su dirección y teléfono que posean carritos ACTIVOS

SELECT nombre, direccion, telefono
FROM Clientes
JOIN Carritos ON Clientes.dni = Carritos.Clientes_dni
WHERE estado = 'ACTIVO';

--Listar los nombres de los clientes, su dirección y teléfono que posean carritos ABANDONADOS y las unidades en el carrito sean mayor que 2

SELECT nombre, direccion, telefono
FROM Clientes
JOIN Carritos ON Clientes.dni = Carritos.Clientes_dni
WHERE estado = 'ABANDONADO' AND unidades > 2;

--Listar los nombres de los clientes que hayan comprado productos de marca SAMSUNG

SELECT nombre
FROM Clientes
JOIN Carritos ON Clientes.dni = Carritos.Clientes_dni
JOIN Productos ON Carritos.Productos_sku = Productos.sku
WHERE estado = 'FINALIZADO' AND marca = 'Samsung';

--Listar los nombres de los clientes y de los productos, que hayan comprado productos de marca PHILIPS

SELECT Clientes.nombre, Productos.descripcion
FROM Clientes
JOIN Carritos ON Clientes.dni = Carritos.Clientes_dni
JOIN Productos ON Carritos.Productos_sku = Productos.sku
WHERE estado = 'FINALIZADO' AND marca = 'Philips';

--Listar los nombres de los clientes y de los productos, que hayan comprado productos de marca PHILIPS y su precio sea menor a $ 10.000,00

SELECT Clientes.nombre, Productos.descripcion
FROM Clientes
JOIN Carritos ON Clientes.dni = Carritos.Clientes_dni
JOIN Productos ON Carritos.Productos_sku = Productos.sku
WHERE estado = 'FINALIZADO' AND marca = 'Philips' AND precio < 10000;

--Obtener por cada carrito el costo total, que se obtiene de multiplicar las unidades del carrito con el precio del producto relacionado

SELECT Carritos.id, Carritos.unidades * Productos.precio AS Total
FROM Carritos
JOIN Productos ON Productos.sku = Carritos.Productos_sku;

--Seleccionar los nombre de los clientes que hayan ABANDONADO carritos con productos de marca SAMSUNG y cuyo tipo de producto sea ELECTRODOMÉSTICO

SELECT Clientes.nombre
FROM Clientes
JOIN Carritos ON Clientes.dni = Carritos.Clientes_dni
JOIN Productos ON Carritos.Productos_sku = Productos.sku
JOIN Categorias ON Productos.Categorias_id = Categorias.id
WHERE Productos.marca = 'Samsung' AND Carritos.estado = 'ABANDONADO' AND Categorias.nombre = 'ELECTRODOMESTICOS';

--Listar los datos completos de los clientes que hayan gastado mas de $ 5.000,00 por carrito, donde el total del carrito se calcula haciendo las unidades del carrito por el precio del producto seleccionado

SELECT Clientes.dni, Clientes.nombre, Clientes.telefono, Clientes.direccion, Clientes.tarjetas
FROM Clientes
JOIN Carritos ON Clientes.dni = Carritos.Clientes_dni
JOIN Productos ON Carritos.Productos_sku = Productos.sku
WHERE (Carritos.unidades * Productos.precio) > 5000 AND Carritos.estado = 'FINALIZADO';