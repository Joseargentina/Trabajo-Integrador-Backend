import { Model, DataTypes } from 'sequelize'
import sequelize from '../conexion/dataBase.js'
import Actor from './actor.js'
import Contenido from './contenido.js'
class ContenidoActores extends Model {}

ContenidoActores.init(
  {
    id_contenido: {
      type: DataTypes.BIGINT,
      primaryKey: true,
      allowNull: false,
      references: {
        model: Contenido,
        key: 'id'
      }
    },
    id_actor: {
      type: DataTypes.BIGINT,
      primaryKey: true,
      allowNull: false,
      references: {
        model: Actor,
        key: 'id'
      }
    }

  },
  {
    sequelize,
    modelName: 'ContenidoActores',
    tableName: 'contenido_actores',
    indexes: [
      { unique: false, fields: ['id_contenido'] },
      { unique: false, fields: ['id_actor'] }
    ],
    timestamps: false
  }
)

export default ContenidoActores
