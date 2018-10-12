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
    var query = req.query.q;
    var genre = req.query.genre;

    movieRepository.getMovies(query,genre,(err, data) => {
        if (err) {
            console.error("Movies response error: " + err);
            res.status(500).send({err});
        } else {            
            res.json(data);
        }        
    }); 
});

app.get('/movie/:movie', function(req, res) {
    var movie = req.params.movie.split('-').join(' ');
    
    movieRepository.getMovieDetails(movie, (err,data) => {
        if(err) {
            console.error("Movie details response error: " + err);
            res.status(500).send({err});
        } else {
            res.json(data);
        }
    });
});

app.listen(8000, () => console.log('Listening on port 8000!'))
