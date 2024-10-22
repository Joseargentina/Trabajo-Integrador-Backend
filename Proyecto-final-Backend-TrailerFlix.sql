DROP DATABASE IF EXISTS trailerflix;
CREATE DATABASE IF NOT EXISTS trailerflix DEFAULT CHARACTER SET = 'utf8mb4';
USE trailerflix;

-- Crear las tablas
CREATE TABLE IF NOT EXISTS categorias (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    INDEX (nombre)
);

CREATE TABLE IF NOT EXISTS generos (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    INDEX (nombre)
);

CREATE TABLE IF NOT EXISTS contenidos (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    gen VARCHAR(50) NOT NULL,
    poster VARCHAR(255) NOT NULL,
    duracion INT DEFAULT 0,
    id_categoria BIGINT NOT NULL,
    trailer VARCHAR(255) NOT NULL,    
    temporadas VARCHAR(10) DEFAULT 'N/A',
    resumen TEXT NOT NULL,
    INDEX (titulo),  -- Índice estándar en la columna "titulo"
    FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);

CREATE TABLE IF NOT EXISTS actores (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100),
    UNIQUE (nombre, apellido),
    INDEX (nombre),
    INDEX (apellido)
);

CREATE TABLE IF NOT EXISTS contenido_actores (
    id_contenido BIGINT NOT NULL,
    id_actor BIGINT NOT NULL,
    PRIMARY KEY (id_contenido, id_actor),
    FOREIGN KEY (id_contenido) REFERENCES contenidos(id),
    FOREIGN KEY (id_actor) REFERENCES actores(id),
    INDEX (id_contenido),
    INDEX (id_actor)
);

CREATE TABLE IF NOT EXISTS contenido_generos (
    id_contenido BIGINT NOT NULL,
    id_genero BIGINT NOT NULL,
    PRIMARY KEY (id_contenido, id_genero),
    FOREIGN KEY (id_contenido) REFERENCES contenidos(id),
    FOREIGN KEY (id_genero) REFERENCES generos(id),
    INDEX (id_contenido),
    INDEX (id_genero)
);

CREATE VIEW contenido_busqueda AS
SELECT 
    c.id, 
    c.titulo, 
    c.gen, 
    GROUP_CONCAT(DISTINCT g.nombre SEPARATOR ', ') AS generos,
    GROUP_CONCAT(DISTINCT CONCAT(a.nombre, ' ', a.apellido) SEPARATOR ', ') AS reparto
FROM 
    contenidos c
LEFT JOIN 
    contenido_generos cg ON c.id = cg.id_contenido
LEFT JOIN 
    generos g ON cg.id_genero = g.id
LEFT JOIN 
    contenido_actores ca ON c.id = ca.id_contenido
LEFT JOIN 
    actores a ON ca.id_actor = a.id
GROUP BY 
    c.id;

