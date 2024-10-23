/**
 * @swagger
 * components:
 *   schemas:
 *     Contenido:
 *       type: object
 *       required:
 *         - titulo
 *         - gen
 *         - poster
 *         - duracion
 *         - id_categoria
 *         - trailer
 *         - resumen
 *       properties:
 *         id:
 *           type: integer
 *           description: ID auto-generado del contenido
 *           example: 1
 *         titulo:
 *           type: string
 *           description: Título de la película o serie
 *           example: "Jurassic World"
 *         gen:
 *           type: string
 *           description: Género de la película o serie
 *           example: "Comedia"
 *         poster:
 *           type: string
 *           format: url
 *           description: URL del poster
 *           example: "./posters/32.jpg"
 *         duracion:
 *           type: integer
 *           description: Duración en minutos
 *           example: 148
 *         id_categoria:
 *           type: integer
 *           description: ID de la categoría relacionada
 *           example: 2
 *         trailer:
 *           type: string
 *           format: url
 *           description: URL del trailer
 *           example: "https://www.youtube.com/embed/RFinNxS5KN4"
 *         temporadas:
 *           type: integer
 *           description: Número de temporadas (si aplica) default 'N/A'
 *           example: 3
 *         resumen:
 *           type: string
 *           description: Resumen o sinopsis de la película o serie
 *           example: "Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático, Jurassic Wold, con versiones «domesticadas» de algunos de los dinosaurios más conocidos. Cuando todo parece ir sobre ruedas y ser el negocio del siglo, un nuevo dinosaurio de especie desconocida, pues ha sido creado manipulando genéticamente su ADN, y que resulta ser mucho más inteligente de lo que se pensaba, se escapa de su recinto y comienza a causar estragos entre los visitantes del Parque."
 *     Categoria:
 *       type: object
 *       required:
 *         - id
 *         - nombre
 *       properties:
 *         id:
 *           type: integer
 *           description: ID auto-generado de la categoría (1 o 2)
 *           example: 1
 *         nombre:
 *           type: string
 *           description: Nombre de la categoría
 *           example: "Serie"
 *     Filtros:
 *       type: object
 *       properties:
 *         titulo:
 *           type: string
 *           description: Filtrar por título
 *           example: "The Flash"
 *         gen:
 *           type: string
 *           description: Filtrar por género
 *           example: "Ciencia Ficción"
 *         categoria:
 *           type: string
 *           description: Filtrar por nombre de categoría
 *           example: "Serie"
 *     ContenidoActualizar:
 *       type: object
 *       properties:
 *         titulo:
 *           type: string
 *           maxLength: 100
 *           example: "Nuevo Título"
 *         gen:
 *           type: string
 *           description: Género de la película o serie
 *           example: "Drama"
 *         duracion:
 *           type: integer
 *           description: Duración en minutos, si es una Serie default 0
 *           example: 150
 *         temporadas:
 *            type: string
 *            example: "1"
 */
