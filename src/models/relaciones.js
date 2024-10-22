import Contenido from './contenido.js'
import Categorias from './categoria.js'
import Actor from './actor.js'
import Genero from './generos.js'
import ContenidoGeneros from './contenidoGeneros.js'
import ContenidoActores from './contenidoActores.js'

export function definirRelaciones () {
  // Relación de Contenido con Categorias
  Categorias.hasMany(Contenido, { foreignKey: 'id_categoria', sourceKey: 'id' })
  Contenido.belongsTo(Categorias, { foreignKey: 'id_categoria', targetKey: 'id' })

  // Relación de Contenido con Actores (Many-to-Many)
  Contenido.belongsToMany(Actor, { through: ContenidoActores, foreignKey: 'id_contenido' })
  Actor.belongsToMany(Contenido, { through: ContenidoActores, foreignKey: 'id_actor' })

  // Relación de Contenido con Generos (Many-to-Many)
  Contenido.belongsToMany(Genero, { through: ContenidoGeneros, foreignKey: 'id_contenido' })
  Genero.belongsToMany(Contenido, { through: ContenidoGeneros, foreignKey: 'id_genero' })

  // Relaciones de ContenidoActores con Contenido y Actor
  ContenidoActores.belongsTo(Contenido, { foreignKey: 'id_contenido' })
  ContenidoActores.belongsTo(Actor, { foreignKey: 'id_actor' })

  // Relaciones de ContenidoGeneros con Contenido y Genero
  ContenidoGeneros.belongsTo(Contenido, { foreignKey: 'id_contenido' })
  ContenidoGeneros.belongsTo(Genero, { foreignKey: 'id_genero' })
}
