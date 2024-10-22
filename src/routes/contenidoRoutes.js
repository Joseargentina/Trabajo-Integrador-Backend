import express from 'express'
import Contenido from '../models/contenido.js'
import { contenidoSchema, contentToUpdate, filtrosSchema } from '../controllers/contenidoSchema.js'
import Categorias from '../models/categoria.js'
import { Op } from 'sequelize'

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

// Endpoint para filtrar por título, género o categoría.
// Control de errores para manejar coincidencias no encontradas o problemas de conexión.
router.get('/contenidos/filtrar', async (req, res) => {
  const { titulo, gen, categoria } = req.query

  try {
    const { error } = await filtrosSchema.validateAsync({ titulo, gen, categoria })
    if (error) {
      return res.status(400).json({
        ok: false,
        status: 400,
        message: error.details[0].message
      })
    }

    const filtros = {}
    if (titulo) filtros.titulo = { [Op.like]: `%${titulo}%` }
    if (gen) filtros.gen = { [Op.like]: `%${gen}%` }

    const productos = await Contenido.findAll({
      where: filtros,
      include: [
        {
          model: Categorias,
          where: categoria ? { nombre: { [Op.like]: `%${categoria}%` } } : {},
          attributes: ['nombre']
        }
      ]
    })

    if (productos.length === 0) {
      return res.status(404).json({
        ok: false,
        status: 404,
        message: 'No se encontraron contenidos con los filtros proporcionados'
      })
    }

    res.status(200).json({
      ok: true,
      status: 200,
      body: productos
    })
  } catch (err) {
    res.status(500).json({
      ok: false,
      status: 500,
      message: 'Error en el servidor',
      error: err.message
    })
  }
})

// Endpoint para agregar una nueva pelicula o serie a la base de datos.
// Validación de campos obligatorios.
router.post('/contenidos/agregar', async (req, res) => {
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

// Endpoint para actualizar información como temporadas o reparto.
// Control de errores para manejar actualizaciones fallidas.
router.patch('/contenidos/actualizar/:id', async (req, res) => {
  const { id } = req.params
  const numberId = parseInt(id, 10)

  // Expresión regular para validar que el ID sea un número entero positivo
  if (!/^\d+$/.test(id)) {
    return res.status(400).json({
      ok: false,
      status: 400,
      message: 'El ID debe ser un número entero positivo sin caracteres adicionales ni signos'
    })
  }

  // Validar los datos de entrada usando el esquema
  const { error } = await contentToUpdate.validateAsync(req.body)
  if (error) {
    return res.status(400).json({
      ok: false,
      status: 400,
      message: error.details[0].message
    })
  }
  const { gen, duracion } = req.body

  try {
    const [productToUpdate] = await Contenido.update({
      gen,
      duracion
    }, {
      where: { id }
    })
    if (productToUpdate === 0) {
      return res.status(404).json({
        ok: false,
        status: 404,
        error: 'Producto no encontrado'
      })
    }
    const product = await Contenido.findByPk(numberId)
    return res.status(200).json({
      ok: true,
      status: 200,
      message: 'Contenido actualizado con éxito',
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

// Endpoint para eliminar un contenido
//  Control de errores para manejar problemas durante el borrado.
router.delete('/contenidos/eliminar/:id', async (req, res) => {
  const { id } = req.params
  const numberId = parseInt(id, 10)

  try {
    // Verificar que el ID sea un número entero positivo
    if (!/^\d+$/.test(id)) {
      return res.status(400).json({
        ok: false,
        status: 400,
        message: 'El ID debe ser un número entero positivo'
      })
    }
    const productToDelete = await Contenido.findByPk(numberId)
    if (!productToDelete) {
      return res.status(404).json({
        ok: false,
        status: 404,
        message: 'Contenido no encontrado'
      })
    }

    await Contenido.destroy({ where: { id: numberId } })
    res.status(200).json({
      ok: true,
      status: 200,
      message: 'Contenido eliminado con éxito'
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

// Endpoint para obtener un contenido específico.
// Control de errores para manejar casos en que el contenido no exista.
router.get('/contenidos/:id', (req, res) => {
  const { id } = req.params
  const numberId = parseInt(id, 10)

  // Verificar que el ID sea un número entero positivo
  if (!/^\d+$/.test(id)) {
    return res.status(400).json({
      ok: false,
      status: 400,
      message: 'El ID debe ser un número entero positivo'
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

export default router
