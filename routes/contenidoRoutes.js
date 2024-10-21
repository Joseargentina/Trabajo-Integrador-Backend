import express from 'express'
import Contenido from '../models/contenido.js'

const router = express.Router()

// Endpoint que devuelve todos los contenidos de la base de datos.
// Control de errores para manejar la indisponibilidad de la base de datos.
router.get('/contenidos', async (req, res) => {
  await Contenido.findAll()
})

// Endpoint para obtener un contenido específico.
// Control de errores para manejar casos en que el contenido no exista.
router.get('/contenidos/:id', (req, res) => {
  res.send('Hola productos por ID')
})

// Endpoint para filtrar por título, género o categoría.
router.post('/', (req, res) => {

})

router.put('/:id', (req, res) => {

})

router.delete('/:id', (req, res) => {

})

export default router
