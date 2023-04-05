const mongoose = require("mongoose");

var userSchema = new mongoose.Schema({
    email: String,
    password: String,
});

var UserModel = new mongoose.model('users', userSchema);

module.exports = UserModel;