const express = require('express');
const app = express();
const cors = require('cors');
const bodyParser = require('body-parser');
const genreRepository = require('./repositories/genre-repository');
const movieRepository = require('./repositories/movie-repository');
const jsonParser = bodyParser.json();

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
    const query = req.query.q;
    const genre = req.query.genre;

    movieRepository.getMovies(query, genre,(err, data) => {
        if (err) {
            console.error("[ === Get all movies response error === ]: " + err);
            res.status(500).send({err});
        } else {            
            res.json(data);
        }        
    }); 
});

app.get('/movie/:movie', function(req, res) {
    const movie = req.params.movie.split('-').join(' ');
    
    movieRepository.getMovieDetails(movie, (err,data) => {
        if(err) {
            console.error("[ === Get movie details response error === ]: " + err);
            res.status(500).send({err});
        } else {
            res.json(data);
        }
    });
});

app.post('/movie', jsonParser, function(req, res) {
    const body = req.body;
    console.log("body ==================> ", body);
    
    if(!req.body) {
        res.sendStatus(400);
        return;
    } 
    
    movieRepository.addMovie(body, (err, data) => {
        if(err) {
            console.error("[ === Add movie response error === ]: " + err);
            res.status(500).send({err});
        } else {
            res.json(data);
        }
    });
});

app.listen(8000, () => console.log('Listening on port 8000!'))
