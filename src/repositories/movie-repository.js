const db = require('./../../database/database');

// List all movies
const getMovies = (query,genre,callback) => {
    let selectStatement = 
        `SELECT movie.title, year, genre.genre 
        FROM movie inner 
        JOIN genre ON movie.genre_id = genre.id`;  
    
    if (query !== undefined && genre !== undefined) {
        selectStatement += ` WHERE title SIMILAR to '%(${query})%' AND genre = '${genre}'`;
    } else if (query !== undefined && genre === undefined) {
        selectStatement += ` WHERE title SIMILAR to '%(${query})%'`;
    } else if(query === undefined && genre !== undefined) {
        selectStatement += ` WHERE genre = '${genre}'`;
    }

    db.any(selectStatement)
    .then(function (data) {
        callback(null, data);
    })
    .catch(function (error) {
        callback(error);
    });
};

// Single movie details
const getMovieDetails = (title, callback) => {
    let selectStatement = `SELECT * FROM movie WHERE title = '${title}'`;

    db.any(selectStatement)
    .then(function (data) {
        callback(null, data);
    })
    .catch(function (error) {
       callback(error);
    });
};

// Create new movie
const addMovie = ({title, duration, genreId, year, rating, imageUrl, customerRating, description}, callback) => {
    const movieInsertStatement = 
        `INSERT INTO movie 
            (title, genre_id, year, description, image_url, duration, customer_rating, rating)
        VALUES('${title}', ${genreId}, ${year}, '${description}', '${imageUrl}', ${duration}, ${customerRating}, '${rating}')`;

    console.log("movieInsertStatement: ==========>", movieInsertStatement);
    


    db.any(movieInsertStatement)
    .then(function (data) {

        console.log("data after insert statement:", data);
        
        callback(null, data);
    })
    .catch(function (error) {
        callback(error);
    });
};

module.exports = {
    getMovies,
    getMovieDetails,
    addMovie
};