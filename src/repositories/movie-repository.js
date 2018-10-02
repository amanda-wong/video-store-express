const db = require('./../../database/database');

function getMovies(query,genre,callback) {
    var selectStatement = "select title from movie inner join genre on movie.genre_id = genre.id";  
    
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

module.exports = {
    getMovies
}