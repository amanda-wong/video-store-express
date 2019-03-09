const db = require('../../database/database');

// Get all actors
const getActors = (callback) => {
    const actorSelectStatement = 
        `SELECT * FROM actor ORDER BY first_name ASC`;

    db.any(actorSelectStatement)
        .then(function (data) {
            callback(null, data);
        })
        .catch(function (err) {
            callback(err);
        });
};

module.exports = {
    getActors
};