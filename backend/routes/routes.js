const express = require('express');
const UserModel = require('../db/userModel');
const router = express.Router();

router.post('/signup' , async (req, resp)=>{
    const {email,password} = req.body;
    console.log(email);
    console.log(password);
    let user = new UserModel({
        email,
        password,
    });
    console.log(user);
    await user.save();
    resp.json({token:"123456789"});
});

router.get('/' , async(req, res)=>{
    const data = await UserModel.find();
    res.json(data);    
});

module.exports = router;