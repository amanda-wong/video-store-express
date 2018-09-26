const pgp = require('pg-promise')();
const db = pgp('postgres://amanda:psqlpassword90@localhost:5432/amanda'); 

module.exports = db;