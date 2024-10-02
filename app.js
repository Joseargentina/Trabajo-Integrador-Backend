import express from 'express'
import { testConnection } from './conexion/database.js'
import morgan from 'morgan'
import router from './routes/contenidoRoutes.js'
process.loadEnvFile()

const app = express()
testConnection()

// Middlewares
app.use(express.json())
app.use(morgan('dev'))
// app.use('/', testConnection)

app.get('/', (req, res) => {
  res.send('Bienvenido a la raíz del servidor!')
})

// Ruta para '/contenido' y sus subrutas
app.use('/contenido', router)

// Server
const PORT = process.env.PORT ?? 3001
app.listen(PORT, () => {
  console.log(`Server running on port: http://localhost:${PORT}`)
})
