'use strict';
const users = require('./controller/userController.js');
const listBooks = require('./controller/listBookController');

const routes = app => {
    app.route('/')
        .get(users.index);

    app.route('/users')
        .get(users.users);

    app.route('/users/:user_id')
        .get(users.findUsers);

    app.route('/users')
        .post(users.createUsers);
    
    app.route('/users/:user_id')
        .put(users.updateUsers);

    app.route('/users/:user_id')
        .delete(users.deleteUsers);

    // List Books
    app.route('/')
        .get(listBooks.index);

    app.route('/listBooks')
        .get(listBooks.listBooks);

    app.route('/listBooks/:book_id')
        .get(listBooks.findListBooks);

    app.route('/listBooks')
        .post(listBooks.createListBooks);
    
    app.route('/listBooks/:book_id')
        .put(listBooks.updateListBooks);

    app.route('/listBooks/:book_id')
        .delete(listBooks.deleteListBooks);

};

module.exports = routes;