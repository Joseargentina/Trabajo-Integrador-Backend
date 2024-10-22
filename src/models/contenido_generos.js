import { Model, DataTypes } from 'sequelize'
import sequelize from '../conection/dataBase.js'
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
      { unique: false, fields: ['id_contenido'] }, // El índice debe ser único en la combinación
      { unique: false, fields: ['id_genero'] } // Aunque son clave primaria, puedes usar índices
    ],
    timestamps: false
  }
)

// Definir relaciones
// ContenidoGeneros.belongsTo(Contenido, { foreignKey: 'id_contenido' })
// ContenidoGeneros.belongsTo(Genero, { foreignKey: 'id_genero', targetKey: 'id' })

export default ContenidoGeneros
