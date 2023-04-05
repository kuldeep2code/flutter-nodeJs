const express = require("express");
const routes = require('./routes/routes')
require('./db/db')

const app = express();
app.use(express.json({extended:false}));
app.use("/" , routes)


app.listen(5000 , ()=> console.log('App start on port 4500'));