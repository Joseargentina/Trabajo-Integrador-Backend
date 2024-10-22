import { Model, DataTypes } from 'sequelize'
import sequelize from '../conexion/dataBase.js'
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
export default Actor
