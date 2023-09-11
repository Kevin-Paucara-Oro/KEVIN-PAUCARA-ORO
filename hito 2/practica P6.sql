CREATE DATABASE pregunta_6;
USE pregunta_6;

CREATE TABLE persona
(
carnet VARCHAR (50) PRIMARY KEY,
nombre VARCHAR (50),
apellido VARCHAR (50)
);

CREATE TABLE tienda_cualquiera
(
nit INTEGER PRIMARY KEY,
nombre_de_tienda VARCHAR (60),
ubicación VARCHAR (50)
);

CREATE TABLE pais
(
presidente VARCHAR (60) PRIMARY KEY,
capital VARCHAR (50),
continente VARCHAR (50)
);

INSERT INTO persona(carnet, nombre, apellido)
VALUES ('16008225LP', 'KEVIN', 'PAUCARA')
 
INSERT INTO tienda_cualquiera (nit, nombre_de_tienda, ubicación)
VALUES (123456789, 'La Alpaca Gamer','Cochabamba')

INSERT INTO pais (presidente, capital, continente)
VALUES ('Vladimir Putin', 'Moscú', 'Europa')

SELECT * FROM persona;
SELECT * FROM tienda_cualquiera;
SELECT * FROM pais;

CREATE DATABASE Hito2Tarea;
USE Hito2Tarea;

CREATE TABLE universidad 
(
nombre_de_universidad VARCHAR (100) PRIMARY KEY,
clasificación_de_universidad VARCHAR (50),
sedes_o_facultades VARCHAR (100),
fecha_de_fundación VARCHAR (50)
);

INSERT INTO universidad (nombre_de_universidad,	clasificación_de_universidad, sedes_o_facultades, fecha_de_fundación)
VALUES ('UNIFRANZ', 'PRIVADA', 'SÍ', '2 de febrero de 1993')
INSERT INTO universidad (nombre_de_universidad,	clasificación_de_universidad, sedes_o_facultades, fecha_de_fundación)
VALUES ('UPEA', 'PÚBLICA', 'SÍ', '5 de Septiembre del 2000')
INSERT INTO universidad (nombre_de_universidad,	clasificación_de_universidad, sedes_o_facultades, fecha_de_fundación)
VALUES ('UTB', 'PRIVADA', 'SÍ', '5 de abril de 1993')
INSERT INTO universidad (nombre_de_universidad,	clasificación_de_universidad, sedes_o_facultades, fecha_de_fundación)
VALUES ('UMSA', 'PÚBLICA', 'SÍ', '25 de octubre de 1830')

SELECT * FROM universidad;

