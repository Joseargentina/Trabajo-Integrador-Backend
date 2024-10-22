import { Model, DataTypes } from 'sequelize'
import sequelize from '../conection/dataBase.js'
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

// Definir relaciones
ContenidoActores.belongsTo(Contenido, { foreignKey: 'id_contenido' })
ContenidoActores.belongsTo(Actor, { foreignKey: 'id_actor' })

export default ContenidoActores
