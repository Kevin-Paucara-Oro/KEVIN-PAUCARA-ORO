CREATE DATABASE CAMPEONATO_DE_FUTBOL_HITO3;
USE CAMPEONATO_DE_FUTBOL_HITO3;

CREATE TABLE campeonato
(
id_campeonato VARCHAR (20) PRIMARY KEY,
nombre_campeonato VARCHAR(100),
sede VARCHAR (30)
);

CREATE TABLE equipo
(
id_equipo VARCHAR (100) PRIMARY KEY,
nombre_equipo VARCHAR(50),
categoria VARCHAR (20),
id_campeonato VARCHAR (20),
FOREIGN KEY (id_campeonato) REFERENCES campeonato (id_campeonato)
);

CREATE TABLE jugador
(
id_jugador VARCHAR(20) PRIMARY KEY,
nombres VARCHAR (50),
apellidos VARCHAR(50),
ci VARCHAR(50),
edad INTEGER,
id_equipo VARCHAR (100)
FOREIGN KEY (id_equipo) REFERENCES equipo (id_equipo),
);

INSERT INTO campeonato (id_campeonato, nombre_campeonato, sede)
VALUES ('camp-111', 'Campeonato Unifranz', 'El Alto'),
('camp-222','Campeonato Unifranz','Cochabamba');


INSERT INTO equipo (id_equipo, nombre_equipo, categoria, id_campeonato)
VALUES('equ-111', 'Google', 'VARONES', 'camp-111'),
('equ-222', '404 Not found', 'VARONES', 'camp-111'),
('equ-333', 'girls unifranz', 'MUJERES', 'camp-111');

INSERT INTO jugador(id_jugador, nombres, apellidos, ci, edad, id_equipo)
VALUES 
('jug-111', 'Carlos', 'Villa', '8997811LP',19 , 'equ-222'),
('jug-222', 'Pedro', 'Salas', '8997822LP', 20, 'equ-222'),
('jug-333', 'Saul', 'Araj', '8997833LP', 21, 'equ-222'),
('jug-444', 'Sandra', 'Solis', '8997844LP', 20, 'equ-333'),
('jug-555', 'Ana', 'Mica', '8997855LP', 23,'equ-333');

-- consulta de todos los jugadores que pertenzcan al id de equipo = equ-222
SELECT * FROM equipo  AS eq INNER JOIN jugador AS jug ON eq.id_equipo = jug.id_equipo WHERE eq.id_equipo = 'equ-222';
--mostras jugadores (nombres y apellidos) que juegan en la sede El Alto
SELECT nombres, apellidos FROM jugador, campeonato INNER JOIN  equipo ON equipo.id_campeonato = campeonato.id_campeonato WHERE sede = 'El Alto';
--mostrar aqullos jugadores mayores de o igual a 21 años que sean de la categoria varones
SELECT * FROM jugador INNER JOIN equipo ON equipo.id_equipo = jugador.id_equipo WHERE jugador.edad >= 21 AND equipo.categoria = 'VARONES';
--mostrar que equipos forman parte del campeonato camp-111 y ademas sean de la categoria mujeres
SELECT nombre_equipo FROM equipo INNER JOIN campeonato ON equipo.id_campeonato = campeonato.id_campeonato WHERE campeonato.id_campeonato = 'camp-111' AND equipo.categoria = 'MUJERES';
--mostrar nombre del equipo del jugador con id_jugador igual a jug-333
SELECT nombre_equipo FROM equipo INNER JOIN jugador ON equipo.id_equipo = jugador.id_equipo WHERE jugador.id_jugador = 'jug-333';
--mostrar el nombre del campeonato del jugador con id_jugador igual al jug-333
SELECT nombre_campeonato FROM campeonato, equipo INNER JOIN jugador ON jugador.id_equipo= equipo.id_equipo WHERE jugador.id_jugador = 'jug-333';
--crear una consulta de SQL que maneje 3 tablas de la base de datos
SELECT nombres, apellidos, nombre_campeonato, nombre_equipo FROM jugador
     INNER JOIN equipo ON equipo.id_equipo = jugador.id_equipo
     INNER JOIN campeonato ON campeonato.id_campeonato = equipo.id_campeonato; 
