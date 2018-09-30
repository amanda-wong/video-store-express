--Find all actors first and last who play in a movie called crazy stupid love

SELECT actor.first_name, actor.last_name
FROM actor
    INNER JOIN actor_movie
    ON (actor.id = actor_movie.actor_id)
    INNER JOIN movie
    ON (actor_movie.movie_id = movie.id)
WHERE movie.title = 'crazy stupid love';


--Find movie with the title stupid love
SELECT title
FROM movie
WHERE title SIMILAR TO '%(crazy|stupid|love)%';

 