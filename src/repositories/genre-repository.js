const db = require('./../../database/database');

function getGenres(callback) {
    db.any("select genre from genre")
        .then(function (data) {
            callback(null,data);
        })
        .catch(function (error) {
           callback(error);
        })
}

module.exports = {
    getGenres
}