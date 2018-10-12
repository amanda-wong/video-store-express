const db = require('./../../database/database');

function getMovies(query,genre,callback) {
    let selectStatement = "select movie.title, year, genre.genre from movie inner join genre on movie.genre_id = genre.id";  
    
    if(query !== undefined && genre !== undefined) {
        selectStatement += ` where title similar to '%(${query})%' and genre = '${genre}'`;
    } else if (query !== undefined && genre === undefined) {
        selectStatement += ` where title similar to '%(${query})%'`;
    } else if(query === undefined && genre !== undefined) {
        selectStatement += ` where genre = '${genre}'`;
    }

    db.any(selectStatement)
        .then(function (data) {
            callback(null,data);
        })
        .catch(function (error) {
           callback(error);
        })
}

function getMovieDetails(title, callback) {
    let selectStatement = `select * from movie where title = '${title}'`;

    db.any(selectStatement)
    .then(function (data) {
        callback(null,data);
    })
    .catch(function (error) {
       callback(error);
    })
}

module.exports = {
    getMovies,
    getMovieDetails
}