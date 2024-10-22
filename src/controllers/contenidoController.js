/* eslint-disable camelcase */
import Contenido from '../models/contenido.js'
import Categorias from '../models/categoria.js'
import { Op } from 'sequelize'
import { filtrosSchema, contenidoSchema, contentToUpdate } from '../controllers/contenidoSchema.js'

export const getAllContent = async (req, res) => {
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
}

export const filterContent = async (req, res) => {
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
}

export const addContent = async (req, res) => {
  const { error } = await contenidoSchema.validateAsync(req.body)
  if (error) {
    return res.status(400).json({
      ok: false,
      status: 400,
      message: error.details[0].message
    })
  }

  const { titulo, gen, poster, duracion, id_categoria, trailer, temporadas, resumen } = req.body

  try {
    const product = await Contenido.create({
      titulo,
      gen,
      poster,
      duracion,

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
}

export const updateContent = async (req, res) => {
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
}

export const deleteContent = async (req, res) => {
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
}

export const findById = async (req, res) => {
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

  try {
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
  } catch (error) {
    res.status(500).json({
      ok: false,
      status: 500,
      message: 'Error en el servidor',
      error: error.message
    })
  }
}
