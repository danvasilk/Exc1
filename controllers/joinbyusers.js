const db = require('../db')

class JoinController {
    async joinDataById(req, res) {
        const data = await db.query("SELECT * FROM owners JOIN cars ON owners.id=cars.user_id WHERE owners.id=$1", [5])
        res.json(data.rows)
    }
    async joinDataByYear(req, res) {
        // Годы: 1998, 2002, 2003, 2005, 2008, 2010, 2012, 2013, 2015, 2018, 2020, 2021
        const data = await db.query("SELECT * FROM owners JOIN cars ON owners.id=cars.user_id WHERE cars.year=$1", [2018])
        res.json(data.rows)
    }
    async joinDataByBrand(req, res) {
        // Список машин: "Toyota", "Jeep", "Mercedes-Benz", "Лада", "Porsche", "Kia", "Daewoo", "Chevrolet"
        const data = await db.query("SELECT * FROM owners JOIN cars ON owners.id=cars.user_id WHERE cars.brand=$1", ["Jeep"])
        res.json(data.rows)
    }
}

module.exports = new JoinController();