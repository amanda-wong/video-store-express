-- Create Tables 

CREATE TABLE actor (
    id serial PRIMARY KEY,
    first_name varchar(15) NOT NULL,
    last_name varchar(15) NOT NULL
);

CREATE TABLE genre (
    id serial PRIMARY KEY,
    genre varchar(20) NOT NULL
);

CREATE TABLE movie (
    id serial PRIMARY KEY,
    title varchar(50),
    genre_id int,
    FOREIGN KEY (genre_id) references genre(id)
);

CREATE TABLE actor_movie (
    id serial PRIMARY KEY,
    actor_id int NOT NULL,
    movie_id int NOT NULL, 
    FOREIGN KEY (actor_id) references actor(id),
    FOREIGN KEY (movie_id) references movie(id)
);

-- Insert dummy data

insert into genre (genre) 
values 
('comedy'),
('romance'),
('thriller'),
('horror'),
('action'),
('satire'),
('musical'),
('drama'),
('documentary'),
('history'),
('crime/mystery'),
('sci-fi'),
('fantasy'),
('animation'),
('adventure'),
('western');