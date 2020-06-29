const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => res.send('Hello World!'))

// GET method route
app.get('/hello/:hello', function (req, res) {
    res.send('GET request to the homepage')
  })
  

app.listen(port, () => console.log(`Example app listening at http://localhost:${port}`))


module.exports = {
    mysql: {
      host: process.env.DB_HOST || 'localhost',
      port: process.env.DB_PORT || 3306,
      user: process.env.DB_USER || 'root',
      password: process.env.DB_PASSWORD || 'root',
      database: process.env.NODE_ENV === 'development' ? 'SikhiFM' : 'Options',
      dateStrings: true,
      connectionLimit: process.env.DB_POOL_SIZE,
    },
  };
  