import express from 'express'
import { getAllContent, filterContent, addContent, updateContent, deleteContent, findById } from '../controllers/contenidoController.js' // Importación correcta

const router = express.Router()

/**
 * @swagger
 * /contenidos:
 *   get:
 *     summary: Obtiene todos los contenidos
 *     description: Endpoint que devuelve todos los contenidos de la base de datos.
 *     responses:
 *       200:
 *         description: Lista de contenidos
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 $ref: '#/components/schemas/Contenido'
 *       404:
 *         description: No se encontró contenido para mostrar.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 error:
 *                   type: string
 *                   example: No se encontraron contenidos para listar.
 *       500:
 *         description: Error en el servidor.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 error:
 *                   type: string
 *                   example: Error en el servidor
 *                 description:
 *                   type: string
 *                   example: Mensaje de error detallado.
 */
router.get('/contenidos', getAllContent)

/**
 * @swagger
 * /contenidos/filtrar:
 *   get:
 *     summary: Filtra contenidos por título, género o categoría
 *     description: Endpoint para filtrar contenidos según título, género o categoría.
 *     parameters:
 *       - in: query
 *         name: titulo
 *         required: false
 *         schema:
 *           type: string
 *         description: Filtra por título
 *       - in: query
 *         name: gen
 *         required: false
 *         schema:
 *           type: string
 *         description: Filtra por género
 *       - in: query
 *         name: categoria
 *         required: false
 *         schema:
 *           type: string
 *         description: Filtra por categoría
 *     responses:
 *       200:
 *         description: Lista de contenidos filtrados
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 $ref: '#/components/schemas/Filtros'
 *       400:
 *         description: Solicitud incorrecta.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 error:
 *                   type: string
 *                   example: Solicitud incorrecta.
 *       404:
 *         description: No se encontraron contenidos con los filtros proporcionados.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 error:
 *                   type: string
 *                   example: No se encontraron contenidos con los filtros proporcionados.
 *       500:
 *         description: Error en el servidor.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 error:
 *                   type: string
 *                   example: Error en el servidor
 *                 description:
 *                   type: string
 *                   example: Mensaje de error detallado.
 */
router.get('/contenidos/filtrar', filterContent)

/**
 * @swagger
 * /contenidos/agregar:
 *   post:
 *     summary: Agregar una nueva película o serie
 *     description: Permite agregar una nueva película o serie a la base de datos.
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             required:
 *               - titulo
 *               - gen
 *               - poster
 *               - duracion
 *               - id_categoria
 *               - trailer
 *               - resumen
 *             properties:
 *               titulo:
 *                 type: string
 *                 description: Título de la película o serie
 *                 example: "El Padrino"
 *               gen:
 *                 type: string
 *                 description: Género de la película o serie
 *                 example: "Drama"
 *               poster:
 *                 type: string
 *                 description: URL del póster de la película o serie
 *                 example: "https://ejemplo.com/poster.jpg"
 *               duracion:
 *                 type: integer
 *                 description: Duración de la película o serie en minutos
 *                 example: 175
 *               id_categoria:
 *                 type: integer
 *                 description: ID de la categoría a la que pertenece la película o serie
 *                 example: 1
 *               trailer:
 *                 type: string
 *                 description: URL del tráiler de la película o serie
 *                 example: "https://ejemplo.com/trailer.mp4"
 *               temporadas:
 *                 type: integer
 *                 description: Número de temporadas (aplicable para series)
 *                 example: 2
 *               resumen:
 *                 type: string
 *                 description: Resumen de la película o serie
 *                 example: "Un poderoso mafioso intenta mantener el control de su familia y su imperio."
 *     responses:
 *       201:
 *         description: Contenido creado con éxito
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 ok:
 *                   type: boolean
 *                   example: true
 *                 status:
 *                   type: integer
 *                   example: 201
 *                 message:
 *                   type: string
 *                   example: "Contenido creado con éxito"
 *                 body:
 *                   type: object
 *                   properties:
 *                     id:
 *                       type: integer
 *                       example: 1
 *                     titulo:
 *                       type: string
 *                       example: "El Padrino"
 *                     gen:
 *                       type: string
 *                       example: "Drama"
 *                     poster:
 *                       type: string
 *                       example: "https://ejemplo.com/poster.jpg"
 *                     duracion:
 *                       type: integer
 *                       example: 175
 *                     id_categoria:
 *                       type: integer
 *                       example: 1
 *                     trailer:
 *                       type: string
 *                       example: "https://ejemplo.com/trailer.mp4"
 *                     temporadas:
 *                       type: integer
 *                       example: 2
 *                     resumen:
 *                       type: string
 *                       example: "Un poderoso mafioso intenta mantener el control de su familia y su imperio."
 *       400:
 *         description: Solicitud incorrecta
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 ok:
 *                   type: boolean
 *                   example: false
 *                 status:
 *                   type: integer
 *                   example: 400
 *                 message:
 *                   type: string
 *                   example: "El título es requerido"
 *       500:
 *         description: Error en el servidor
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 ok:
 *                   type: boolean
 *                   example: false
 *                 status:
 *                   type: integer
 *                   example: 500
 *                 message:
 *                   type: string
 *                   example: "Error en el servidor"
 *                 error:
 *                   type: string
 *                   example: "Error de conexión a la base de datos"
 */
router.post('/contenidos/agregar', addContent)

/**
 * @swagger
 * /contenidos/actualizar/{id}:
 *   patch:
 *     summary: Actualiza información de contenido
 *     description: Endpoint para actualizar la información de un contenido existente mediante su ID.
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *         description: ID del contenido a actualizar.
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               titulo:
 *                 type: string
 *                 maxLength: 100
 *                 example: "Nuevo Título"
 *               gen:
 *                 type: string
 *                 maxLength: 50
 *                 example: "Acción"
 *               duracion:
 *                 type: integer
 *                 example: 120
 *               temporadas:
 *                 type: string
 *                 maxLength: 10
 *                 example: "1"
 *     responses:
 *       200:
 *         description: Contenido actualizado con éxito.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 ok:
 *                   type: boolean
 *                   example: true
 *                 status:
 *                   type: integer
 *                   example: 200
 *                 message:
 *                   type: string
 *                   example: "Contenido actualizado con éxito"
 *                 body:
 *                   $ref: '#/components/schemas/Contenido'
 *       400:
 *         description: Solicitud incorrecta o validación fallida.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 ok:
 *                   type: boolean
 *                   example: false
 *                 status:
 *                   type: integer
 *                   example: 400
 *                 message:
 *                   type: string
 *                   example: "El ID debe ser un número entero positivo sin caracteres adicionales ni signos"
 *       404:
 *         description: Producto no encontrado.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 ok:
 *                   type: boolean
 *                   example: false
 *                 status:
 *                   type: integer
 *                   example: 404
 *                 error:
 *                   type: string
 *                   example: "Producto no encontrado"
 *       500:
 *         description: Error en el servidor.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 ok:
 *                   type: boolean
 *                   example: false
 *                 status:
 *                   type: integer
 *                   example: 500
 *                 message:
 *                   type: string
 *                   example: "Error en el servidor"
 *                 error:
 *                   type: string
 *                   example: "Mensaje de error detallado."
 */
router.patch('/contenidos/actualizar/:id', updateContent)

/**
 * @swagger
 * /contenidos/eliminar/{id}:
 *   delete:
 *     summary: Elimina un contenido específico
 *     description: Endpoint para eliminar un contenido de la base de datos usando su ID.
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         description: ID del contenido a eliminar.
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Contenido eliminado con éxito.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 ok:
 *                   type: boolean
 *                   example: true
 *                 status:
 *                   type: integer
 *                   example: 200
 *                 message:
 *                   type: string
 *                   example: Contenido eliminado con éxito
 *       400:
 *         description: El ID debe ser un número entero positivo.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 ok:
 *                   type: boolean
 *                   example: false
 *                 status:
 *                   type: integer
 *                   example: 400
 *                 message:
 *                   type: string
 *                   example: El ID debe ser un número entero positivo
 *       404:
 *         description: Contenido no encontrado.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 ok:
 *                   type: boolean
 *                   example: false
 *                 status:
 *                   type: integer
 *                   example: 404
 *                 message:
 *                   type: string
 *                   example: Contenido no encontrado
 *       500:
 *         description: Error en el servidor.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 ok:
 *                   type: boolean
 *                   example: false
 *                 status:
 *                   type: integer
 *                   example: 500
 *                 message:
 *                   type: string
 *                   example: Error en el servidor
 *                 error:
 *                   type: string
 *                   example: Mensaje de error detallado.
 */
router.delete('/contenidos/eliminar/:id', deleteContent)

/**
 * @swagger
 * /contenidos/{id}:
 *   get:
 *     summary: Obtiene un contenido específico
 *     description: Endpoint para obtener un contenido de la base de datos usando su ID.
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         description: ID del contenido a obtener.
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Contenido encontrado.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 ok:
 *                   type: boolean
 *                   example: true
 *                 status:
 *                   type: integer
 *                   example: 200
 *                 body:
 *                   type: object
 *                   properties:
 *                     id:
 *                       type: integer
 *                     titulo:
 *                       type: string
 *                     gen:
 *                       type: string
 *                     poster:
 *                       type: string
 *                     duracion:
 *                       type: integer
 *                     id_categoria:
 *                       type: integer
 *                     trailer:
 *                       type: string
 *                     temporadas:
 *                       type: integer
 *                     resumen:
 *                       type: string
 *       400:
 *         description: El ID debe ser un número entero positivo.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 ok:
 *                   type: boolean
 *                   example: false
 *                 status:
 *                   type: integer
 *                   example: 400
 *                 message:
 *                   type: string
 *                   example: El ID debe ser un número entero positivo
 *       404:
 *         description: Contenido no encontrado.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 ok:
 *                   type: boolean
 *                   example: false
 *                 status:
 *                   type: integer
 *                   example: 404
 *                 message:
 *                   type: string
 *                   example: Contenido no encontrado
 *       500:
 *         description: Error en el servidor.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 ok:
 *                   type: boolean
 *                   example: false
 *                 status:
 *                   type: integer
 *                   example: 500
 *                 message:
 *                   type: string
 *                   example: Error en el servidor
 *                 error:
 *                   type: string
 *                   example: Mensaje de error detallado.
 */
router.get('/contenidos/:id', findById)

export default router
