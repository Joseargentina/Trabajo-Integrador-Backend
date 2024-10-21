import { Model, DataTypes } from 'sequelize'
import sequelize from '../conexion/dataBase.js'
// import Contenido from './contenido.js'
class Actor extends Model {}

Actor.init(
  {
    id: {
      type: DataTypes.BIGINT,
      primaryKey: true,
      autoIncrement: true
    },
    nombre: {
      type: DataTypes.STRING(100),
      allowNull: false
    },
    apellido: {
      type: DataTypes.STRING(100),
      allowNull: false
    }
  },
  {
    sequelize,
    modelName: 'Actor',
    tableName: 'actores',
    indexes: [
      { unique: true, fields: ['nombre', 'apellido'] }
    ],
    timestamps: false
  }
)

// Relaciones con Contenido
// Actor.belongsToMany(Contenido, { through: 'contenido_actores', foreignKey: 'id_actor' })

export default Actor
