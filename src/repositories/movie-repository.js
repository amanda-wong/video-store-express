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
    db.any("select title from movie where title similar to '%(" + query + ")%'")
        .then(function (data) {
            callback(null,data);
        })
        .catch(function (error) {
           callback(error);
        })
}

function getMoveByGenre(query, callback){
    db.any("select movie.title from movie inner join genre on movie.genre_id = genre.id where genre = '" + query + "'")
        .then(function (data) {
            callback(null,data);
        })
        .catch(function (error) {
           callback(error);
        })
}

module.exports = {
    getMovies,
    getMoveByTitle,
    getMoveByGenre
}