import { Model, DataTypes } from 'sequelize'
import sequelize from '../conexion/dataBase.js'
class Categorias extends Model {}

Categorias.init(
  {
    id: {
      type: DataTypes.BIGINT,
      primaryKey: true,
      autoIncrement: true
    },
    nombre: {
      type: DataTypes.STRING(50),
      allowNull: false,
      unique: true
    }
  },
  {
    sequelize,
    modelName: 'Categorias',
    tableName: 'categorias',
    timestamps: false
  }
)
export default Categorias
