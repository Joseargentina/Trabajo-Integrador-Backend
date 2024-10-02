import { Sequelize } from 'sequelize'

process.loadEnvFile()

const { DATA_BASE, USER, PASSWORD, HOST } = process.env

const sequelize = new Sequelize(DATA_BASE, USER, PASSWORD, {
  host: HOST,
  dialect: 'mysql',
  port: 3306
})

export async function testConnection () {
  try {
    await sequelize.authenticate()
    console.log('La conexion ha sido establecida con exito!')
    // Sincronizar los modelos una sola vez al iniciar la app
    await sequelize.sync() // O sincroniza tus modelos específicos
  } catch (err) {
    console.error('Error de conexión: ', err.message) // Muestra el mensaje exacto del error
    console.error('Detalles completos: ', err) // Muestra más detalles del error
  }
}
export default sequelize
