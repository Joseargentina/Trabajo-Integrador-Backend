import { Sequelize } from 'sequelize'
import { configDotenv } from 'dotenv'
const ENV = process.env.NODE_ENV || 'local'
configDotenv({ path: `.env.${ENV}` })

const { DB_NAME, DB_USER, DB_PASSWORD, DB_HOST, DB_DIALECT, DB_PORT } = process.env

const sequelize = new Sequelize(DB_NAME, DB_USER, DB_PASSWORD, {
  host: DB_HOST,
  dialect: DB_DIALECT,
  port: DB_PORT
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
