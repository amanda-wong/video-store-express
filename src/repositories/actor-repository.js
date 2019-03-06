// const db = require('../../database/database');

// // Create new movie
// const addMovie = (title, duration, genreId, year, rating, imgUrl, customerRating, description, callback) => {
//     const movieInsertStatement = 
//         `INSERT INTO movie 
//             (title, genre_id, year, description, image_url, duration, customer_rating, rating)
//         VALUES(${title}, ${genreId}, ${year}, ${imageUrl}, ${duration}, ${customerRating}, ${rating})`;

//     db.any(movieInsertStatement)
//     .then(function (data) {
//         callback(null,data);
//     })
//     .catch(function (error) {
//         callback(error);
//     });
// };

// module.exports = {
//     getMovies,
//     getMovieDetails
// };