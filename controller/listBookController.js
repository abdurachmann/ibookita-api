'use strict';

const response = require('../config/response.js');
const config = require('../config/config.js');

exports.index = (req, res) => {
    response.success("Hello from the Node JS RESTful side!", res)
};

exports.listBooks = (req, res) => {
    config.query("SELECT * FROM list_books", function (error, rows, fields) {
        if (error) {
            console.log(error)
        } else {
            response.success(rows, res)
        }
    });
};

exports.findListBooks = (req, res) => {
    const book_id = req.params.book_id;
    
    config.query("SELECT * FROM list_books WHERE id = ?", [ book_id ], function (error, rows, fields) {
        if (error) {
            console.log(error)
        } else {
            response.success(rows, res)
        }
    });
};

exports.createListBooks = (req, res) => {
    const title = req.body.title;
    const author = req.body.author;
    const image = req.body.image;
    const page = req.body.page;
    const tags = req.body.tags;
    const description = req.body.description;

    config.query("INSERT INTO list_books (title, author, image, page, tags, description) values (?,?,?,?,?,?)",
    [ title, author, image, page, tags, description ], function (error, rows, fields) {
        if (error) {
            console.log(error)
        } else {
            response.success("Add book has been successfully", res)
        }
    });
};

exports.updateListBooks = (req, res) => {
    const title = req.body.title;
    const author = req.body.author;
    const image = req.body.image;
    const page = req.body.page;
    const tags = req.body.tags;
    const description = req.body.description;

    config.query("UPDATE list_books SET title= ?, author= ?, image= ?, page= ?, tags= ?, description= ? WHERE id = ?",
    [ title, author, image, page, tags, description], 
    function (error, rows, fields) {
        if (error) {
            console.log(error)
        } else {
            response.success("Update book has been successfully!", res)
        }
    });
};

exports.deleteListBooks = (req, res) => {
    const book_id = req.params.book_id;

    config.query("DELETE FROM list_books WHERE id = ?",
    [ book_id ],
    function(error, rows, fields) {
        if(error) {
            console.log(error)
        } else {
            response.success("Delete user has been successfully!", res)
        }
    });
};