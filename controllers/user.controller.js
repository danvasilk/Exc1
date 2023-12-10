const db = require('../db')

class UserController {
    async createUser(req, res) {
        const {name, surname, city} = req.body
        const newPerson = await db.query('INSERT INTO owners (name, surname, city) values ($1, $2, $3) RETURNING *', [name, surname, city])

        res.json(newPerson.rows[0])
    }
    async getUsers(req, res) {
        const users = await db.query("SELECT * FROM owners")
        // console.log(users.rows)
        res.json(users.rows)
    }
    async getOneUser(req, res) {
        const id = req.params.id
        const user = await db.query("SELECT * FROM owners where id = $1", [id])
        res.json(user.rows[0])
    }
    async updateUser(req, res) {
        const {id, name, surname, city} = req.body
        const user = await db.query('UPDATE owners set name = $1, surname = $2, city = $3 where id = $4 RETURNING *', [name, surname, city, id])
        res.json(user.rows[0])
    }
    async deleteUser(req, res) {
        const id = req.params.id
        const user = await db.query("DELETE FROM owners where id = $1", [id])
        res.json(user.rows[0])
    }
}

module.exports = new UserController();
