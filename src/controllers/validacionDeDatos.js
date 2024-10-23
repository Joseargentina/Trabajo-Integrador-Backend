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

export const ContenidoActualizar = Joi.object({
  titulo: Joi.string().max(100).optional(),
  gen: Joi.string().max(50).optional(),
  duracion: Joi.number().integer().min(0).optional(),
  temporadas: Joi.string().max(10).optional()
})

export const filtrosSchema = Joi.object({
  titulo: Joi.string().max(100).optional(),
  gen: Joi.string().max(50).optional(),
  categoria: Joi.string().min(1).max(50).optional()
})
