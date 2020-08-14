'use strict';
const response = require('../config/response.js');
const config = require('../config/config.js');
const bcrypt = require('bcrypt');

const salt = bcrypt.genSaltSync(10);

exports.users = (req, res) => {
    config.query("SELECT * FROM users", function (error, rows, fields) {
        if (error) {
            console.log(error)
        } else {
            response.success(rows, res)
        }
    });
};

exports.index = (req, res) => {
    response.success("Hello from the Node JS RESTful side!", res)
};

exports.findUsers = (req, res) => {
    const user_id = req.params.user_id;
    
    config.query("SELECT * FROM users WHERE id = ?", [ user_id ], function (error, rows, fields) {
        if (error) {
            console.log(error)
        } else {
            response.success(rows, res)
        }
    });
};

exports.createUsers = (req, res) => {
    const username = req.body.username;
    const email = req.body.email;
    const password = bcrypt.hashSync(req.body.password, salt);
    const check = bcrypt.compareSync(req.body.password, password);
    console.log(check);

    config.query("INSERT INTO users (username, email, password) values (?,?,?)",
    [ username, email, password ], function (error, rows, fields) {
        if (error) {
            console.log(error)
        } else {
            response.success("Add user has been successfully", res)
        }
    });
};

exports.updateUsers = (req, res) => {
    const user_id = req.params.user_id;
    const username = req.body.username;
    const email = req.body.email;
    const password = bcrypt.hashSync(req.body.password, salt);
    const check = bcrypt.compareSync(req.body.password, password);
    console.log(check);

    config.query("UPDATE user SET username= ?, email= ?, password= ? WHERE id = ?",
    [ username, email, password, user_id], 
    function (error, rows, fields) {
        if (error) {
            console.log(error)
        } else {
            response.success("Update user has been successfully!", res)
        }
    });
};

exports.deleteUsers = (req, res) => {
    const user_id = req.params.user_id;

    config.query("DELETE FROM user WHERE id = ?",
    [ user_id ],
    function(error, rows, fields) {
        if(error) {
            console.log(error)
        } else {
            response.success("Delete user has been successfully!", res)
        }
    });
};