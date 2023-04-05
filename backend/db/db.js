const mongoose = require("mongoose");

//connection to db
async function connectDb(){
    await mongoose.connect('mongodb://127.0.0.1:27017/auth');
    console.log('Connected to db');
}

module.exports = connectDb();