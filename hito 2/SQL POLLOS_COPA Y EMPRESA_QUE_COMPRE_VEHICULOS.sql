CREATE DATABASE POLLOS_COPA;
USE POLLOS_COPA;
CREATE TABLE cliente
(
id_cliente INTEGER PRIMARY KEY,
nombre VARCHAR(50),
apeliidos VARCHAR(50),
edad INTEGER,
domicilio VARCHAR(100)
);
  
CREATE TABLE pedido
(
id_pedido VARCHAR(50) PRIMARY KEY,
articulo VARCHAR(100),
costo VARCHAR(50),
fecha VARCHAR(50)
);

CREATE TABLE detalle_pedido
(
detalle_del_pedido VARCHAR(100)PRIMARY KEY,
id_cliente INTEGER,
id_pedido VARCHAR(50),
FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
FOREIGN KEY (id_pedido) REFERENCES pedido (id_pedido)
);

INSERT INTO cliente(id_cliente, nombre, apeliidos, edad, domicilio)
VALUES (16008225, 'kevin', 'paucara', 20, 'c/tihuanaku N5000');
INSERT INTO cliente(id_cliente, nombre, apeliidos, edad, domicilio)
VALUES (12345678, 'luis', 'gonzales', 21, 'av/franz tamayo N3000');

INSERT INTO pedido (id_pedido, articulo, costo, fecha)
VALUES ('1528-bros', 'pollo broaster', '15 bs', '20/03/2023');
INSERT INTO pedido (id_pedido, articulo, costo, fecha)
VALUES ('1529-spiedo', 'pollo spiedo', '15 bs', '20/03/2023');

INSERT INTO detalle_pedido (detalle_del_pedido, id_cliente, id_pedido)
VALUES ('bros-150', 16008225, '1528-bros') ;
INSERT INTO detalle_pedido (detalle_del_pedido, id_cliente, id_pedido)
VALUES ('spd-150', 12345678, '1529-spiedo');

SELECT * FROM cliente;
SELECT * FROM pedido ;
SELECT * FROM detalle_pedido;















CREATE DATABASE empresa_que_compra_vehiculos;
USE empresa_que_compra_vehiculos;

CREATE TABLE Empresa
(
Nombre_de_empresa VARCHAR(50) PRIMARY KEY,
Ubicación VARCHAR(100)
);

CREATE TABLE Vehiculos 
(
Id_del_modelo VARCHAR(50) PRIMARY KEY,
Nombre_del_modelo VARCHAR (50),
Color VARCHAR (20)
);

CREATE TABLE Detalla_de_Compra
(
Id_de_compra VARCHAR(50)PRIMARY KEY,
Nombre_de_empresa VARCHAR(50),
Id_del_modelo VARCHAR(50),
Cantidad INTEGER,
Fecha_de_pedido VARCHAR(50),
Fecha_de_llegada VARCHAR (50),
FOREIGN KEY (Nombre_de_empresa) REFERENCES Empresa(Nombre_de_empresa),
FOREIGN KEY (Id_del_modelo) REFERENCES Vehiculos (Id_del_modelo)
);

INSERT iNTO Empresa (nombre_de_empresa, ubicación)
VALUES ('Toyota', 'Japón')
INSERT INTO Empresa(Nombre_de_empresa, Ubicación)
VALUES('Volkswagen', 'Alemania')
INSERT INTO Empresa (Nombre_de_empresa, Ubicación)
VALUES ('Hyundai', 'Sur Corea')

INSERT INTO Vehiculos ( Id_del_modelo, Nombre_del_modelo, Color)
VALUES ('541-RZE', 'Raize', 'Rojo')
INSERT INTO Vehiculos (Id_del_modelo,Nombre_del_modelo, Color)
VALUES ('431-CRC', 'Corolla Cross', 'Negro')
INSERT INTo Vehiculos (Id_del_modelo, Nombre_del_modelo, Color)
VALUES ('321-R4H',  'Rav4 HEV', 'Blanco')

INSERT INTO Detalla_de_Compra (Id_de_compra, Nombre_de_empresa, Id_del_modelo, Cantidad, Fecha_de_pedido, Fecha_de_llegada)
VALUES ('2938TOY', 'Toyota', '541-RZE', 10, '25/03/2023', '25/04/2023')
INSERT INTO Detalla_de_Compra (Id_de_compra, Nombre_de_empresa, Id_del_modelo, Cantidad, Fecha_de_pedido, Fecha_de_llegada)
VALUES ('3125VOK', 'Volkswagen', '431-CRC', 15, '27/03/2023', '27/04/2023')
INSERT INTO Detalla_de_Compra (Id_de_compra, Nombre_de_empresa, Id_del_modelo, Cantidad, Fecha_de_pedido, Fecha_de_llegada)
VALUES ('2436HYD', 'Hyundai', '321-R4H', 20, '21/03/2023', '21/04/2023')

SELECT * FROM Empresa;
SELECT * FROM Vehiculos;
SELECT * FROM Detalla_de_Compra;