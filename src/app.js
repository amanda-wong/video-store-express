const express = require('express');
const app = express();
const cors = require('cors');
const genreRepository = require('./repositories/genre-repository');
const movieRepository = require('./repositories/movie-repository');


app.use(cors());
app.get('/', function() {
    console.log('API listening');
});

app.get('/genres', function (req, res) {
    genreRepository.getGenres((err, data) => {
        if (err) {
            console.error("Genres response error: " + error);
            res.status(500).send({error});
        } else {
            res.json(data)
        }        
    }); 
});

app.get('/movies', function (req, res) {
    movieRepository.getMovies((err, data) => {
        if (err) {
            console.error("Movies response error: " + err);
            res.status(500).send({err});
        } else {
            res.json(data)
        }        
    }); 
});

app.get('/movies/search', function (req, res) {
    var query = req.query.q.split(' ').join('|');
    movieRepository.getMoveByTitle(query,(err, data) => {
        if (err) {
            console.error("Movies response error: " + err);
            res.status(500).send({err});
        } else {            
            res.json(data)
        }        
    }); 
});

app.listen(8000, () => console.log('Listening on port 8000!'))
