CREATE DATABASE IF NOT EXISTS usuarios_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER DATABASE usuarios_db COLLATE utf8mb4_general_ci;
USE usuarios_db;
CREATE TABLE IF NOT EXISTS usuarios (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS direcciones (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT UNSIGNED UNIQUE,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    direccion VARCHAR(255) NOT NULL
);
USE usuarios_db;
ALTER TABLE direcciones MODIFY id INT UNSIGNED;
ALTER TABLE direcciones DROP PRIMARY KEY;
ALTER TABLE direcciones ADD PRIMARY KEY(usuario_id);
USE usuarios_db;
ALTER TABLE usuarios MODIFY nombre VARCHAR(150) NOT NULL;
USE usuarios_db;
ALTER TABLE usuarios ADD telefono VARCHAR(15) AFTER nombre;
USE usuarios_db; 
ALTER TABLE usuarios MODIFY telefono BIGINT;
USE usuarios_db;
ALTER TABLE usuarios DROP telefono;
USE usuarios_db;
INSERT INTO usuarios (nombre)
VALUES ('Juan Pérez');
USE usuarios_db;
INSERT INTO direcciones (usuario_id, direccion)
VALUES (1, "Calle Mayor 123");
USE usuarios_db;
INSERT INTO usuarios (nombre)
VALUES ("Ana Gómez"),
	   ("Carlos Ruiz");
USE usuarios_db;
INSERT INTO direcciones (usuario_id, direccion)
VALUES (2, "Calle Menor 456"),
       (3, "Calle Mediana 789");
USE usuarios_db;
SELECT * FROM direcciones;
SELECT * FROM usuarios;
USE usuarios_db;
UPDATE direcciones SET direccion = 'Avenida Central 456' WHERE usuario_id = 1;
USE usuarios_db;
DELETE FROM direcciones WHERE usuario_id = 3;
USE usuarios_db;
DESCRIBE direcciones;
USE usuarios_db;
DROP TABLE IF EXISTS direcciones, usuarios;
USE usuarios_db;
DROP DATABASE IF EXISTS usuarios_db;