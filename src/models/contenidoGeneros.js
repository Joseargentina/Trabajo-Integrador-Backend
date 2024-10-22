import { Model, DataTypes } from 'sequelize'
import sequelize from '../conexion/dataBase.js'
import Contenido from './contenido.js'
import Genero from './generos.js'
class ContenidoGeneros extends Model {}

ContenidoGeneros.init(
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
    id_genero: {
      type: DataTypes.BIGINT,
      primaryKey: true,
      allowNull: false,
      references: {
        model: Genero,
        key: 'id'
      }
    }

  },
  {
    sequelize,
    modelName: 'ContenidoGeneros',
    tableName: 'contenido_generos',
    indexes: [
      { unique: false, fields: ['id_contenido'] },
      { unique: false, fields: ['id_genero'] }
    ],
    timestamps: false
  }
)

export default ContenidoGeneros
