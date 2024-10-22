import { Model, DataTypes } from 'sequelize'
import sequelize from '../conection/dataBase.js'
// import Contenido from './contenido.js'
class Genero extends Model {}

Genero.init(
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
    modelName: 'Genero',
    tableName: 'generos',
    timestamps: false
  }
)

// Definir las relaciones con Contenido
// Genero.belongsToMany(Contenido, { through: 'contenido_generos', foreignKey: 'id_genero' })

export default Genero
