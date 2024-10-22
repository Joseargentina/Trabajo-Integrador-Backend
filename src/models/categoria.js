import { Model, DataTypes } from 'sequelize'
import sequelize from '../conection/dataBase.js'
// import Contenido from './contenido.js'
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

// Definir relaciones
// Categorias.hasMany(Contenido, { foreignKey: 'id_categoria', sourceKey: 'id' })
// Contenido.belongsTo(Categorias, { foreignKey: 'id_categoria', targetKey: 'id' })

export default Categorias
