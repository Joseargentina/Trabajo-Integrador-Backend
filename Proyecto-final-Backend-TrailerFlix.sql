-- Crear la base de datos
DROP DATABASE IF EXISTS trailerflix;
CREATE DATABASE IF NOT EXISTS trailerflix DEFAULT CHARACTER SET = 'utf8mb4';
USE trailerflix;

-- Crear las tablas

-- Tabla para las categorías de contenidos
CREATE TABLE IF NOT EXISTS categorias (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    INDEX (nombre) -- Índice para optimizar búsquedas por nombre de categoría
);

-- Tabla para los géneros de contenidos
CREATE TABLE IF NOT EXISTS generos (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    INDEX (nombre) -- Índice para optimizar búsquedas por nombre de género
);

-- Tabla principal de contenidos
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
    INDEX (titulo),  -- Índice estándar en la columna "titulo" para optimizar búsquedas
    FOREIGN KEY (id_categoria) REFERENCES categorias(id) -- Relación con la tabla categorias
);

-- Tabla para los actores
CREATE TABLE IF NOT EXISTS actores (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100),
    UNIQUE (nombre, apellido), -- Combinación única para nombre y apellido
    INDEX (nombre), -- Índice para optimizar búsquedas por nombre
    INDEX (apellido) -- Índice para optimizar búsquedas por apellido
);

-- Tabla para relacionar contenidos y actores
CREATE TABLE IF NOT EXISTS contenido_actores (
    id_contenido BIGINT NOT NULL,
    id_actor BIGINT NOT NULL,
    PRIMARY KEY (id_contenido, id_actor),
    FOREIGN KEY (id_contenido) REFERENCES contenidos(id), -- Relación con la tabla contenidos
    FOREIGN KEY (id_actor) REFERENCES actores(id), -- Relación con la tabla actores
    INDEX (id_contenido), -- Índice para optimizar búsquedas por contenido
    INDEX (id_actor) -- Índice para optimizar búsquedas por actor
);

-- Tabla para relacionar contenidos y géneros
CREATE TABLE IF NOT EXISTS contenido_generos (
    id_contenido BIGINT NOT NULL,
    id_genero BIGINT NOT NULL,
    PRIMARY KEY (id_contenido, id_genero),
    FOREIGN KEY (id_contenido) REFERENCES contenidos(id), -- Relación con la tabla contenidos
    FOREIGN KEY (id_genero) REFERENCES generos(id), -- Relación con la tabla generos
    INDEX (id_contenido), -- Índice para optimizar búsquedas por contenido
    INDEX (id_genero) -- Índice para optimizar búsquedas por género
);

-- Creación de la vista para facilitar la búsqueda de contenidos con géneros y actores
CREATE VIEW contenido_busqueda AS
SELECT 
    c.id, 
    c.titulo, 
    c.gen, 
    GROUP_CONCAT(DISTINCT g.nombre SEPARATOR ', ') AS generos, -- Agrupación de géneros
    GROUP_CONCAT(DISTINCT CONCAT(a.nombre, ' ', a.apellido) SEPARATOR ', ') AS reparto -- Agrupación de actores
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
    c.id; -- Agrupación por ID de contenido para evitar duplicados
