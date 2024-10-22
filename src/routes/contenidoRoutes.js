import express from 'express'
import Contenido from '../models/contenido.js'
import { contenidoSchema } from '../controllers/contenidoSchema.js'

const router = express.Router()

// Endpoint que devuelve todos los contenidos de la base de datos.
// Control de errores para manejar la indisponibilidad de la base de datos.
router.get('/contenidos', async (req, res) => {
  try {
    const products = await Contenido.findAll()
    res.status(200).json({
      ok: true,
      status: 200,
      body: products
    })
  } catch (err) {
    res.status(500).json({
      ok: false,
      status: 500,
      message: 'Error al obtener los contenidos',
      error: err.message
    })
  }
})

// Endpoint para obtener un contenido específico.
// Control de errores para manejar casos en que el contenido no exista.
router.get('/contenido/:id', (req, res) => {
  const { id } = req.params
  const numberId = parseInt(id, 10)

  // Validar que el ID esté presente
  if (!id || isNaN(numberId) || numberId <= 0) {
    return res.status(400).json({
      ok: false,
      status: 400,
      message: 'El ID es requerido y debe ser un número entero positivo'
    })
  }

  Contenido.findByPk(numberId)
    .then(product => {
      if (!product) {
        return res.status(404).json({
          ok: false,
          status: 404,
          message: 'Contenido no encontrado'
        })
      }

      res.status(200).json({
        ok: true,
        status: 200,
        body: product
      })
    })
    .catch(err => {
      res.status(500).json({
        ok: false,
        status: 500,
        message: 'Error en el servidor',
        error: err.message
      })
    })
})

// Endpoint para filtrar por título, género o categoría.
router.get('/contenidos', (req, res) => {

})

// Endpoint para agregar una nueva pelicula o serie a la base de datos.
// Validación de campos obligatorios.
router.post('/contenidos/', async (req, res) => {
  const { error } = await contenidoSchema.validateAsync(req.body)
  if (error) {
    return res.status(400).json({
      ok: false,
      status: 400,
      message: error.details[0].message
    })
  }
  // eslint-disable-next-line camelcase
  const { titulo, gen, poster, duracion, id_categoria, trailer, temporadas, resumen } = req.body

  try {
    const product = await Contenido.create({
      titulo,
      gen,
      poster,
      duracion,
      // eslint-disable-next-line camelcase
      id_categoria,
      trailer,
      temporadas,
      resumen
    })
    res.status(201).json({
      ok: true,
      status: 201,
      message: 'Producto creado con éxito',
      body: product
    })
  } catch (error) {
    res.status(500).json({
      ok: false,
      status: 500,
      message: 'Error en el servidor',
      error: error.message
    })
  }
})

// Endpoint para actualizar un nuevo contenido
router.put('/contenidos/:id', (req, res) => {

})

// Endpoint para eliminar un contenido
router.delete('contenidos/:id', (req, res) => {

})

export default router
