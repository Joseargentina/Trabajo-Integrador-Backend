import { Sequelize } from 'sequelize'
process.loadEnvFile()

const { DATA_BASE, USER, PASSWORD, HOST } = process.env

const sequelize = new Sequelize(DATA_BASE, USER, PASSWORD, {
  host: HOST,
  dialect: 'mysql',
  port: 3306
})
export default sequelize

export async function testConnection () {
  try {
    await sequelize.authenticate()
    console.log('La conexion ha sido establecida con exito!')
  } catch (err) {
    console.error('Error de conexión: ', err.message)
    console.error('Detalles completos: ', err)
  }
}
