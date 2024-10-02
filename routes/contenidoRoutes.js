import express from 'express'
// import sequelize from '../conexion/database.js'

const router = express.Router()

// Routes for CRUD
router.get('/', (req, res) => {
  // Get all content
  res.send('Hola esta es la APP')
})

router.get('/:id', (req, res) => {
  // Get content by ID
})

router.post('/', (req, res) => {
  // Add new content
})

router.put('/:id', (req, res) => {
  // Update content by ID
})

router.delete('/:id', (req, res) => {
  // Delete content by ID
})

export default router
