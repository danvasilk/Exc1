const Router = require('express')
const router = new Router()
const joinController = require('../controllers/joinbyusers')

router.get("/join/1", joinController.joinDataById)
router.get("/join/2", joinController.joinDataByYear)
router.get("/join/3", joinController.joinDataByBrand)

module.exports = router