const db = require('../db')

class CarController {
    async createCar(req, res) {
        const {brand, year, state_number, userId} = req.body
        const newCar = await db.query('INSERT INTO cars (brand, year, state_number, user_id) values ($1, $2, $3, $4) RETURNING *', [brand, year, state_number, userId])
        res.json(newCar.rows[0])
    }
    async getCars(req, res) {
        const users = await db.query("SELECT * FROM cars")
        res.json(users.rows)
    }

    async getCarsByUser(req, res) {
        const id = req.query.id
        const cars = await db.query('SELECT * FROM cars where user_id = $1', [id])
        res.json(cars.rows)
    }
    async deleteCar(req, res) {
        const id = req.params.id
        const car = await db.query("DELETE FROM cars where id = $1", [id])
        res.json(car.rows[0])
    }
}

module.exports = new CarController()