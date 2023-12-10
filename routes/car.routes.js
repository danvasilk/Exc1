const Router = require('express')
const router = new Router()
const carController = require('../controllers/car.controller')

router.post('/car', carController.createCar)
router.get('/car', carController.getCars)
router.get('/car/:id', carController.getCarsByUser)
router.delete('/car/:id', carController.deleteCar)

module.exports = router
