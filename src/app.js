const express = require('express');
const app = express();
const cors = require('cors');
const bodyParser = require('body-parser');
const genreRepository = require('./repositories/genre-repository');
const actorRepository = require('./repositories/actor-repository');
const movieRepository = require('./repositories/movie-repository');
const ratingRepository = require('./repositories/rating-repository');
const jsonParser = bodyParser.json();

app.use(cors());

app.get('/', function() {
    console.log('API listening');
});

app.get('/genres', function (req, res) {
    genreRepository.getGenres((error, data) => {
        if (error) {
            console.error("[ === Get genres response error === ]:" + error);
            res.status(500).send({error});
        } else {
            res.json(data)
        }        
    }); 
});

app.get('/ratings', function (req, res) {
    ratingRepository.getRatings((error, data) => {
        if (error) {
            console.error("[ === Get rating response error === ]:" + error);
            res.status(500).send({error});
        } else {
            res.json(data)
        }        
    }); 
});

app.get('/actors', function (req, res) {
    actorRepository.getActors((error, data) => {
        if (error) {
            console.error("[ === Get actors response error === ]:" + error);
            res.status(500).send({error});
        } else {
            res.json(data)
        }        
    }); 
});

app.get('/movies', function (req, res) {
    const query = req.query.q;
    const genre = req.query.genre;

    movieRepository.getMovies(query, genre,(error, data) => {
        if (error) {
            console.error("[ === Get movies response error === ]: " + error);
            res.status(500).send({error});
        } else {            
            res.json(data);
        }        
    }); 
});

app.get('/movie/:movie', function(req, res) {
    const movie = req.params.movie.split('-').join(' ');
    
    movieRepository.getMovieDetails(movie, (error, data) => {
        if(error) {
            console.error("[ === Get movie details response error === ]: " + error);
            res.status(500).send({error});
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
    
    movieRepository.addMovie(body, (error, data) => { // TODO: not sure why but it enters err on success
        if(error) {
            console.error("[ === Add movie response error === ]: " + error);
            res.status(500).send({error});
        } else {
            res.sendStatus(201);
        }
    });
});

app.listen(8000, () => console.log('Listening on port 8000!'))
