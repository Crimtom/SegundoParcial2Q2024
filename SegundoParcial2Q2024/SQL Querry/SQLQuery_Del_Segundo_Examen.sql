CREATE DATABASE elecciones

USE elecciones

CREATE TABLE partidos
(
	nombre_partido varchar(25) PRIMARY KEY NOT NULL,
	miembros int DEFAULT 10 NOT NULL CHECK (miembros >= 10)

)

CREATE TABLE plataformas
(
	plataforma_nombre varchar(20) PRIMARY KEY NOT NULL,
	--id int PRIMARY KEY NOT NULL,
	partido varchar(25) FOREIGN KEY REFERENCES partidos(nombre_partido) NOT NULL,
	posicion_espectro varchar(20) NOT NULL DEFAULT 'Centro' CHECK (posicion_espectro = 'Centro' or posicion_espectro = 'Centro-Izquierda' or posicion_espectro = 'Centro-Derecha' or posicion_espectro = 'Centro-Liberal' or posicion_espectro = 'Centro-Autoritario' or posicion_espectro = 'Izquierda' or posicion_espectro = 'Derecha' or posicion_espectro = 'Izquierda-Liberal' or posicion_espectro = 'Izquierda-Autoritaria' or posicion_espectro = 'Derecha-Liberal' or posicion_espectro = 'Derecha-Autoritaria')
)

CREATE TABLE candidatos
(
	cedula varchar(9) PRIMARY KEY NOT NULL,
	nombre varchar(20) UNIQUE NOT NULL,
	partido varchar(25) FOREIGN KEY REFERENCES partidos(nombre_partido) NOT NULL,
	--votos int DEFAULT 0 CHECK (votos <= 100 and votos >= 0),
	plataforma varchar(20) FOREIGN KEY REFERENCES plataformas(plataforma_nombre) NOT NULL, -- principios y/o estrategias
	edad int DEFAULT 30 NOT NULL CHECK (edad >= 30 and edad <= 120)
)


CREATE TABLE votos
(
	cedula_votante varchar(9) PRIMARY KEY NOT NULL,
	nombre_votante varchar(20) NOT NULL,
	edad_votante int CHECK (edad_votante >= 18 and edad_votante <= 120) NOT NULL,
	voto_candidato varchar(35) DEFAULT 'VOTO NULO'
)

DROP TABLE votos