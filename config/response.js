'use strict';

exports.success = (values, res) => {
    res.json(values);
    res.end();
}