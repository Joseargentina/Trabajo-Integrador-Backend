import express from 'express'
import sequelize, { testConnection } from './src/conexion/dataBase.js'
import morgan from 'morgan'
import router from './src/routes/contenidoRoutes.js'
import { definirRelaciones } from './src/models/relaciones.js'
import swaggerUi from 'swagger-ui-express'
import swaggerDocs from './src/utils/swagger.config.js'
import { config as configDotenv } from 'dotenv'

const ENV = process.env.NODE_ENV || 'local'
configDotenv({ path: `.env.${ENV}` })

console.log(`Environment: ${ENV}`) // Para verificar el entorno
console.log(`Port: ${process.env.PORT}`) // Para verificar si lee el puerto

const app = express()
app.disable('x-powered-by')

// Middlewares
app.use(express.json())
app.use(morgan('dev'))

// Swagger Config
app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerDocs))

app.get('/', (req, res) => { res.status(200).send('Bienvenidos a TrailerFlix') })

// Ruta para '/contenido' y sus subrutas
app.use('/api/v1', router)

// Midleware para manejo de rutas incorrectas
app.use((req, res, next) => {
  res.status(404).json({
    ok: false,
    status: 404,
    message: 'Error ruta incorrecta'
  })
})

const PORT = process.env.PORT ?? 3000
// Iniciar conexión a la base de datos y servidor
testConnection()
  .then(async () => {
    definirRelaciones()
    await sequelize.sync()
    console.log('Modelos y relaciones sincronizados correctamente.')

    // Iniciar servidor después de la sincronización exitosa
    app.listen(PORT, () => {
      console.log(`Server running on port: http://localhost:${PORT}`)
      console.log(`Docuentación de la API en http://localhost:${PORT}/api-docs`)
    })
  }).catch((error) => {
    console.error('No se pudo conectar a la base de datos:', error.message)
    process.exit(1)
  })
