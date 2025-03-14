CREATE DATABASE IF NOT EXISTS biblioteca CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

ALTER DATABASE biblioteca COLLATE utf8mb4_general_ci;

USE biblioteca;

CREATE TABLE IF NOT EXISTS bibliotecas (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

USE biblioteca;

CREATE TABLE IF NOT EXISTS libros (
	id INT AUTO_INCREMENT PRIMARY KEY,
    biblioteca_id INT UNSIGNED,
    FOREIGN KEY (biblioteca_id) REFERENCES bibliotecas(id) ON DELETE CASCADE,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    anio_publicacion YEAR NOT NULL
);

USE biblioteca;

ALTER TABLE libros ADD genero VARCHAR(50);

USE biblioteca;

ALTER TABLE bibliotecas MODIFY nombre VARCHAR(150) NOT NULL;

USE biblioteca;

ALTER TABLE libros DROP genero;

USE biblioteca;

ALTER TABLE libros ADD isbn VARCHAR(20) AFTER titulo;

USE biblioteca;

ALTER TABLE libros MODIFY isbn CHAR(13) AFTER titulo;

USE biblioteca;

INSERT INTO bibliotecas (nombre) VALUES ('Biblioteca Central');

USE biblioteca;

INSERT INTO libros (biblioteca_id, titulo, autor, anio_publicacion) VALUES (1, 'El Quijote', 'Miguel de Cervantes', 2000);

USE biblioteca;

INSERT INTO libros (biblioteca_id, titulo, autor, anio_publicacion) VALUES (1, 'Sherlock Holmes', 'Arthur Conan Doyle', 2000), (1, 'Miss Marple', 'Agatha Christie', 2000);

USE biblioteca;

SELECT * FROM libros;

USE biblioteca;

UPDATE libros SET anio_publicacion = 1950 WHERE anio_publicacion = 2000;

USE biblioteca;

DELETE FROM libros WHERE id = 1;

USE biblioteca;

DELETE FROM bibliotecas WHERE nombre = 'Biblioteca Central';

USE biblioteca;

DESCRIBE libros;

USE biblioteca;

DROP TABLE libros, bibliotecas;

USE biblioteca;

DROP DATABASE biblioteca;