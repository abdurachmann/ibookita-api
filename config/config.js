const mysql = require('mysql2');

const configDB = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "books_api"
});

configDB.connect( function (err) {
    if (err) throw err;
});

module.exports = configDB;