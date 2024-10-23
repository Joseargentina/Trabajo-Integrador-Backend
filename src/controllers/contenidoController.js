/* eslint-disable camelcase */
import Contenido from '../models/contenido.js'
import Categorias from '../models/categoria.js'
import { Op } from 'sequelize'
import { filtrosSchema, contenidoSchema, ContenidoActualizar } from '../controllers/validacionDeDatos.js'

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
        error: 'Solicitud Incorrecta',
        message: error.details[0].message
      })
    }

    const filtros = {}
    if (titulo) filtros.titulo = { [Op.like]: `%${titulo}%` }
    if (gen) filtros.gen = { [Op.like]: `%${gen}%` }

    const include = []
    if (categoria) {
      include.push(
        {
          model: Categorias,
          where: { nombre: { [Op.like]: `%${categoria}%` } },
          attributes: ['nombre']
        }
      )
    }

    const productos = await Contenido.findAll({
      where: filtros,
      include: include.length ? include : []
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

  // Validar que el ID sea un número entero positivo
  if (!/^\d+$/.test(id)) {
    return res.status(400).json({
      ok: false,
      status: 400,
      message: 'El ID debe ser un número entero positivo sin caracteres adicionales ni signos'
    })
  }

  // Validar los datos de entrada usando el esquema
  const { error } = await ContenidoActualizar.validateAsync(req.body)
  if (error) {
    return res.status(400).json({
      ok: false,
      status: 400,
      message: error.details[0].message
    })
  }

  try {
    // Encontrar el contenido existente por ID
    const productToUpdate = await Contenido.findByPk(numberId)
    if (!productToUpdate) {
      return res.status(404).json({
        ok: false,
        status: 404,
        error: 'Producto no encontrado'
      })
    }

    // Crear un objeto solo con los campos a actualizar
    const updatedData = {}
    if (req.body.titulo) updatedData.titulo = req.body.titulo
    if (req.body.gen) updatedData.gen = req.body.gen
    if (req.body.duracion) updatedData.duracion = req.body.duracion
    if (req.body.temporadas) updatedData.temporadas = req.body.temporadas

    // Actualizar solo los campos que han sido proporcionados
    await Contenido.update(updatedData, {
      where: { id: numberId }
    })

    // No es necesario buscar nuevamente el producto; puedes devolver el mensaje de éxito
    return res.status(200).json({
      ok: true,
      status: 200,
      message: 'Contenido actualizado con éxito',
      body: { id: numberId, ...updatedData } // Responder con los campos actualizados
    })
  } catch (error) {
    return res.status(500).json({
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

  if (!/^\d+$/.test(id)) {
    return res.status(400).json({
      ok: false,
      status: 400,
      message: 'El ID debe ser un número entero positivo'
    })
  }

  try {
    const product = await Contenido.findByPk(numberId)
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
  } catch (error) {
    res.status(500).json({
      ok: false,
      status: 500,
      message: 'Error en el servidor',
      error: error.message
    })
  }
}
