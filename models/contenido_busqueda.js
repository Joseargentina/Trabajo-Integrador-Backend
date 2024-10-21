import { Model, DataTypes } from 'sequelize'
import sequelize from '../conexion/dataBase.js'

class ContenidoBusqueda extends Model {}

ContenidoBusqueda.init(
  {
    id: {
      type: DataTypes.BIGINT,
      primaryKey: true
    },
    titulo: {
      type: DataTypes.STRING(100)
    },
    gen: {
      type: DataTypes.STRING(50)
    },
    generos: {
      type: DataTypes.STRING
    },
    reparto: {
      type: DataTypes.STRING
    }
  },
  {
    sequelize,
    modelName: 'ContenidoBusqueda',
    tableName: 'contenido_busqueda',
    timestamps: false
  }
)

export default ContenidoBusqueda
