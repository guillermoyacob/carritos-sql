--Escriba las sentencias SQL para crear 5 clientes cuyos teléfonos comiencen con característica de TANDIL (0249). Dos de ellos con tarjeta VISA, dos con tarjeta NARANJA y uno con tarjeta MASTERCARD

INSERT INTO Clientes (dni, nombre, telefono, direccion, tarjetas)
VALUES (24442535,'Juan Gonzales', '0249154132541', 'Paz 759', 'VISA'), (32615435, 'Josefina Sanchez', '0249154658125', 'Alem 715', 'VISA'), (27651384, 'Andres Perez', '0249154359862', 'Belgrano 785', 'NARANJA'), (16956784, 'Ariel Ramirez', '0249154358132', 'Av. Santamarina 268', 'NARANJA'), (16549321, 'Luis Gonzales', '02494446135', 'Pinto 321', 'MASTERCARD');

--Escriba las sentencias SQL para crear 5 clientes cuyos teléfonos comiencen con característica de Mar del Plata (0223). Dos de ellos con tarjeta VISA, dos con tarjeta MASTERCARD y uno con tarjeta AMEX

INSERT INTO Clientes (dni, nombre, telefono, direccion, tarjetas)
VALUES (23594623,'Malena Gomez', '0223154132541', 'Rivadavia 32', 'VISA'), (31526198, 'Silvia Rodriguez', '0223154658125', 'Moreno 125', 'VISA'), (17962534, 'Emiliano Gonzales', '0223154359862', 'Almte Brown 155', 'MASTERCARD'), (20351322, 'Alejandro Perez', '0223154358132', 'Las Heras 315', 'MASTERCARD'), (34152623, 'Jorge Martinez', '0223154462533', 'Av. Pedro Luro 268', 'AMEX');

--Escriba las sentencias SQL para crear 8 categorías: ELECTRÓNICA, COMPUTACIÓN, ELECTRODOMÉSTICOS, HOGAR, BLANQUERÍA, DEPORTES, MUEBLES, VIDEOJUEGOS

INSERT INTO Categorias (id, nombre)
VALUES (1, 'ELECTRONICA'), (2, 'COMPUTACION'), (3, 'ELECTRODOMESTICOS'), (4, 'HOGAR'), (5, 'BLANQUERIA'), (6, 'DEPORTES'), (7, 'MUEBLES'), (8, 'VIDEOJUEGOS');

--Escriba las sentencias SQL para crear 5 tipos de productos

INSERT INTO Tipo_Producto (Id, nombre)
VALUES (1, 'HERRAMIENTAS'), (2, 'REPARACION'), (3, 'USADOS'), (4, 'PROMOCION'), (5, 'DISCONTINUADOS');

--Escriba las sentencias SQL para crear 2 productos por categoría. Deben incluir las marcas SAMSUNG y PHILIPS

INSERT INTO Productos (sku, descripcion, marca, existencias, precio, Categorias_id, Tipo_Producto_Id)
VALUES
(1, 'TV 32 Pulgadas', 'Philips', 5, 17000, 1, 4),
(2, 'TV 45 Pulgadas', 'Samsung', 7, 25000, 1, 4),
(3, 'PC Gamer', 'Sentey', 4, 30000, 2, 4),
(4, 'Mouse Pro Gamer G203', 'Logitech', 10, 5000, 2, 4),
(5, 'Lavarropas Automatico', 'Dream', 4, 12000, 3, 2),
(6, 'Heladera con Freezer', 'Electrolux', 2, 40000, 3, 3),
(7, 'Puff', 'Fiacas', 1, 4500, 4, 4),
(8, 'Sillas de Plastico Exterior', 'Colombraro', 10, 2000, 4, 4),
(9, 'Acolchado 1 Plaza', 'Camaro', 4, 2000, 5, 4),
(10, 'Colchon 1 Plaza', 'Simons', 4, 5000, 5, 4),
(11, 'Pelota de Futbol', 'Adidas', 2, 35000, 6, 4),
(12, 'Raqueta de Tenis', 'Wilson', 4, 35000, 6, 3),
(13, 'Cama de una plaza', 'Javier Agustin', 1, 12000, 7, 4),
(14, 'Escritorio Oficina', 'Ostinelli', 2, 8000, 7, 4),
(15, 'Play Station 4', 'Sony', 4, 60000, 8, 5),
(16, 'XBox One S', 'Microsoft', 4, 60000, 8, 5);

--Crear 20 carritos, 5 en estado ABANDONADO, 5 en estado ACTIVO y 10 en estado FINALIZADO. Todos ellos con distintas cantidades de unidades.

INSERT INTO Carritos (id, unidades, estado, Productos_sku, Clientes_dni)
VALUES
(1, 2, 'ABANDONADO', 2, 17962534),
(2, 1, 'ABANDONADO', 11, 16549321),
(3, 1, 'ABANDONADO', 15, 24442535),
(4, 1, 'ABANDONADO', 16, 20351322),
(5, 2, 'ABANDONADO', 9, 34152623),
(6, 1, 'ACTIVO', 1, 27651384),
(7, 3, 'ACTIVO', 7, 16549321),
(8, 6, 'ACTIVO', 8, 31526198),
(9, 1, 'ACTIVO', 3, 32615435),
(10, 1, 'ACTIVO', 4, 32615435),
(11, 2, 'FINALIZADO', 15, 27651384),
(12, 2, 'FINALIZADO', 14, 16956784),
(13, 3, 'FINALIZADO', 1, 23594623),
(14, 2, 'FINALIZADO', 7, 31526198),
(15, 2, 'FINALIZADO', 12, 20351322),
(16, 1, 'FINALIZADO', 5, 16549321),
(17, 1, 'FINALIZADO', 6, 34152623),
(18, 2, 'FINALIZADO', 13, 20351322),
(19, 2, 'FINALIZADO', 9, 16549321),
(20, 2, 'FINALIZADO', 10, 32615435);

--Escriba una consulta SQL que permita modificar los precios de los productos marca SAMSUNG para aumentarles un 10%

UPDATE Productos
SET precio = (precio * 1.1)
WHERE Marca = 'Samsung';

--Escriba una consulta SQL que permita modificar los precios de los productos marca PHILIPS para aumentarles un 15%

UPDATE Productos
SET precio = (precio * 1.15)
WHERE Marca = 'Philips';