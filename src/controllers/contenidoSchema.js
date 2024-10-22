import Joi from 'joi'

export const contenidoSchema = Joi.object({
  titulo: Joi.string().max(100).required(),
  gen: Joi.string().max(50).required(),
  poster: Joi.string().max(255).required(),
  duracion: Joi.number().integer().min(0).default(0),
  id_categoria: Joi.number().integer().required(),
  trailer: Joi.string().uri().max(255).required(),
  temporadas: Joi.string().max(10).default('N/A'),
  resumen: Joi.string().required()
})

export const contentToUpdate = Joi.object({
  gen: Joi.string().max(50).required(),
  duracion: Joi.number().integer().min(0).default(0)
})

export const filtrosSchema = Joi.object({
  titulo: Joi.string().max(100).required(),
  gen: Joi.string().max(50).required(),
  categoria: Joi.string().min(1).max(50).required()
})
