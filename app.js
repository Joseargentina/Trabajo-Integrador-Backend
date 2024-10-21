import express from 'express'
import { testConnection } from './conexion/dataBase.js'
import morgan from 'morgan'
import router from './routes/contenidoRoutes.js'
import { definirRelaciones } from './models/relaciones.js'

process.loadEnvFile()

const app = express()

// Middlewares
app.use(express.json())
app.use(morgan('dev'))

app.get('/', (req, res) => { res.status(200).send('Bienvenidos a TrailerFlix') })

// Ruta para '/contenido' y sus subrutas
app.use('/api/v1', router)

// Server
const PORT = process.env.PORT ?? 3001
// Iniciar conexión a la base de datos y servidor
testConnection()
  .then(() => {
    app.listen(PORT, () => {
      console.log(`Server running on port: http://localhost:${PORT}`)
      // Definir relaciones
      definirRelaciones()
    })
  })
  .catch((error) => {
    console.error('No se pudo conectar a la base de datos:', error.message)
    process.exit(1)
  })
