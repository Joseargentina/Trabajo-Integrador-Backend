import { Model, DataTypes } from 'sequelize'
import Categorias from './categoria.js'
import sequelize from '../conection/dataBase.js'
import Actor from './actor.js'
import Genero from './generos.js'
class Contenido extends Model {}

Contenido.init({
  id: {
    type: DataTypes.BIGINT,
    primaryKey: true,
    autoIncrement: true
  },
  titulo: {
    type: DataTypes.STRING(100),
    allowNull: false
  },
  gen: {
    type: DataTypes.STRING(50),
    allowNull: false
  },
  poster: {
    type: DataTypes.STRING,
    allowNull: false
  },
  duracion: {
    type: DataTypes.INTEGER,
    defaultValue: 0,
    allowNull: false
  },
  id_categoria: {
    type: DataTypes.BIGINT,
    references: {
      model: Categorias,
      key: 'id'
    },
    allowNull: false
  },
  trailer: {
    type: DataTypes.STRING,
    allowNull: false
  },
  temporadas: {
    type: DataTypes.STRING(10),
    defaultValue: 'N/A'
  },
  resumen: {
    type: DataTypes.TEXT,
    allowNull: false
  }
}, {
  sequelize,
  modelName: 'Contenido',
  tableName: 'contenidos',
  indexes: [
    { unique: false, fields: ['titulo'] }
  ],
  timestamps: false
})

// Definir la relación con Categorias
Contenido.belongsTo(Categorias, { foreignKey: 'id_categoria', targetKey: 'id' })

// Definir la relacion con Actores
Contenido.belongsToMany(Actor, { through: 'contenido_actores', foreignKey: 'id_contenido' })

// Definir la relacion con Generos
Contenido.belongsToMany(Genero, { through: 'contenido_generos', foreignKey: 'id_contenido' })
export default Contenido
