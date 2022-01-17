const express = require('express')
var cors = require('cors')
const app = express()
const port = 3000
app.use(express.static('kepek'))
app.use(cors())
app.use(express.json())

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.get('/Animek', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodolgozat'
    })
    
    connection.connect()
    
    connection.query('SELECT * from anime', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)

      res.send(rows)
    })
    
    connection.end()    

  })

  app.post('/animekomment', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodolgozat'
    })
    
    connection.connect()
    
    connection.query('SELECT * from uzenet where uzenet_tipus_id=' + req.body.bevitel1, function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)

      res.send(rows)
    })
    
    connection.end()    

  })


  app.post('/kommentfelvitel', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodolgozat'
    })
    
    connection.connect()
    
    let dt=new Date();
    let teljesdat=dt.getFullYear()+"-"+  (dt.getMonth()+1)   +"-"+dt.getDate();
    connection.query("INSERT INTO uzenet VALUES (NULL, '"+req.body.bevitel1+"', '"+req.body.bevitel2+"', '"+teljesdat+"', "+req.body.bevitel3+") ", function (err, rows, fields) {
      if (err) throw err
    
      console.log("Sikeres felvitel!")

      res.send("Sikeres felvitel!")
    })
    
    connection.end()    

  })  

  app.post('/kereses', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodolgozat'
    })
    
    connection.connect()
    var feltetel2='anime_cim LIKE "%'+req.body.bevitel4+'%"';
    connection.query('SELECT anime_cim,anime_leiras,anime_kep FROM anime WHERE '+feltetel2, function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)

      res.send(rows)
    })
    
    
    connection.end()    

  })

  app.post('/tipusok', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodolgozat'
    })
    
    connection.connect()
    var feltetel3='anime_tipus LIKE "%'+req.body.bevitel3+'%"';
    connection.query('SELECT anime_tipus from anime WHERE'+feltetel3, function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)

      res.send(rows)
    })
    
    connection.end()    

  })


app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})