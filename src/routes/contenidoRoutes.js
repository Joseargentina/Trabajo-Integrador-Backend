import express from 'express'
import { getAllContent, filterContent, addContent, updateContent, deleteContent, findById } from '../controllers/contenidoController.js' // Importación correcta

const router = express.Router()

// Endpoint que devuelve todos los contenidos de la base de datos.
router.get('/contenidos', getAllContent)

// Endpoint para filtrar por título, género o categoría.
router.get('/contenidos/filtrar', filterContent)

// Endpoint para agregar una nueva pelicula o serie a la base de datos.
router.post('/contenidos/agregar', addContent)

// Endpoint para actualizar información como temporadas o reparto.
router.patch('/contenidos/actualizar/:id', updateContent)

// Endpoint para eliminar un contenido
//  Control de errores para manejar problemas durante el borrado.
router.delete('/contenidos/eliminar/:id', deleteContent)

// Endpoint para obtener un contenido específico.
router.get('/contenidos/:id', findById)

export default router
