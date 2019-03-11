const db = require('../../database/database');

// Get all actors
const getRatings = (callback) => {
    const ratingSelectStatement = 
        `SELECT * FROM rating ORDER BY id`;

    db.any(ratingSelectStatement)
        .then(function (data) {
            callback(null, data);
        })
        .catch(function (err) {
            callback(err);
        });
};

module.exports = {
    getRatings
};