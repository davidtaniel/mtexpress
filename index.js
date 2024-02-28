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
app.listen(process.env.PORT || 3000)