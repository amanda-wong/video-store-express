-- TABLE CREATION --------------------------------------------------------------
CREATE TABLE actor_movie (
    id serial PRIMARY KEY,
    actor_id int NOT NULL,
    movie_id int NOT NULL, 
    FOREIGN KEY (actor_id) references actor(id),
    FOREIGN KEY (movie_id) references movie(id)
);

-- INSERTIONS ------------------------------------------------------------------
INSERT INTO actor_movie(actor_id, movie_id)
VALUES
    (1, 1),
    (2, 1),
    (1, 2),
    (3, 2);

INSERT INTO actor_movie (actor_id,movie_id)
VALUES
    (4,3),
    (5,3),
    (6,4),
    (7,4),
    (8,5),
    (9,6),
    (10,6),
    (11,7),
    (12,8),
    (13,8),
    (14,9),
    (15,10);