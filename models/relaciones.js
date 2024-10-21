import Contenido from './contenido.js'
import Categorias from './categoria.js'
import Actor from './actor.js'
import Genero from './generos.js'
import ContenidoGeneros from './contenido_generos.js'
import ContenidoActores from './contenido_actores.js'
export function definirRelaciones () {
  // Relacion de Contenido con Categorias
  Contenido.belongsTo(Categorias, { foreignKey: 'id_categoria', targetKey: 'id' })

  // Relacion de Contenido con Actores
  Contenido.belongsToMany(Actor, { through: 'contenido_actores', foreignKey: 'id_contenido' })

  // Relacion de Contenido con Generos
  Contenido.belongsToMany(Genero, { through: 'contenido_generos', foreignKey: 'id_contenido' })

  // Relaciones de Actores con Contenido
  Actor.belongsToMany(Contenido, { through: 'contenido_actores', foreignKey: 'id_actor' })

  // Relacion de Categorias con Contenido
  Categorias.hasMany(Contenido, { foreignKey: 'id_categoria', sourceKey: 'id' })
  Contenido.belongsTo(Categorias, { foreignKey: 'id_categoria', targetKey: 'id' })

  // Definir las relacione de Generos con Contenido
  Genero.belongsToMany(Contenido, { through: 'contenido_generos', foreignKey: 'id_genero' })

  // Definir relaciones de ContenidoGeneros con Contenido
  ContenidoGeneros.belongsTo(Contenido, { foreignKey: 'id_contenido' })
  ContenidoGeneros.belongsTo(Genero, { foreignKey: 'id_genero', targetKey: 'id' })

  // Definir relaciones de ContenidoActores con Contenido
  ContenidoActores.belongsTo(Contenido, { foreignKey: 'id_contenido' })
  ContenidoActores.belongsTo(Actor, { foreignKey: 'id_actor' })
}
