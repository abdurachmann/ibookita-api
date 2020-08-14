const express = require('express');
const bodyParser = require('body-parser');
const routes = require('./routes.js');
const logger = require('morgan');
const cors = require('cors');

const app = express();
app.use(logger("dev"));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));
app.use(cors());

routes(app);

const server = app.listen(9000, "127.0.0.1", () => {
    const host = server.address().address;
    const port = server.address().port;

    console.log("App listening at http://%s:%s", host, port);
})
