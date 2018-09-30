const db = require('./../../database/database');

function getMovies(callback) {
    db.any("select title from movie")
        .then(function (data) {
            callback(null,data);
        })
        .catch(function (error) {
           callback(error);
        })
}

function getMoveByTitle(query, callback){
    db.any("select title from movie where title like '%" + query + "%'")
        .then(function (data) {
            callback(null,data);
        })
        .catch(function (error) {
           callback(error);
        })
}

module.exports = {
    getMovies,
    getMoveByTitle
}