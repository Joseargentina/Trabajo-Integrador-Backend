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
      }
    ]
  },
  apis: ['./src/routes/*.js', './src/controllers/schemas/*.js']
}

const swaggerDocs = swaggerJSDoc(swaggerOptions)

export default swaggerDocs
