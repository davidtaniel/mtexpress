const express = require('express')
const app = express()
const layouts = require('express-ejs-layouts');
app.set('view engine', 'ejs')
app.use(layouts);
app.use(express.static("public"))
app.all('/', (req, res) => {
    console.log("Just got a request!")
    res.render('index')
})
app.listen(3000, '192.168.1.98')