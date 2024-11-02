import swaggerJSDoc from 'swagger-jsdoc'

const swaggerOptions = {
  definition: {
    openapi: '3.0.0',
    info: {
      title: 'TrailerFlix API',
      version: '1.0.0',
      description: 'Documentación generada con Swagger para la API de Trailerflix'
    },
    servers: [
      {
        url: 'http://localhost:3000/api/v1',
        description: 'Servidor local'
      },
      {
        url: 'https://trabajo-integrador-backend-production.up.railway.app',
        description: 'Servidor Railway'
      }
    ]
  },
  apis: ['./src/routes/*.js', './src/controllers/schemas/*.js']
}

const swaggerDocs = swaggerJSDoc(swaggerOptions)

export default swaggerDocs
