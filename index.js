const express = require('express')
const userRouter = require('./routes/user.routes')
const carRouter = require('./routes/car.routes')
const joinRouter = require('./routes/join.routes')

const PORT = process.env.PORT || 8080

const app = express()

app.use(express.json())
app.use('/api', userRouter)
app.use('/api', carRouter)
app.use('/api', joinRouter)

app.listen(PORT, () => console.log(`server started on port ${PORT}`))