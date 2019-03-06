const db = require('./../../database/database');

// List all genres
function getGenres(callback) {
    db.any("SELECT * FROM genre")
    .then(function (data) {
        callback(null, data);
    })
    .catch(function (error) {
        callback(error);
    });
};

module.exports = {
    getGenres
}