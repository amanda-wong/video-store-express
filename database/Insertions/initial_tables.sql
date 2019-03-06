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

insert into movie(title,genre_id,year) 
values 
    ('pulp fiction', 8, 1994),
    ('titanic',2,1997),
    ('the shawshank redemption',8,1994),
    ('forest gump',8,1994),
    ('the godfather',11,1972),
    ('halloween h20',4,2007),
    ('step brothers',1,2008),
    ('die hard',5,1988),
    ('rambo',5,1982),
    ('avatar',12,2009)

insert into actor(first_name, last_name)
values  
    ('john','travolta'),
    ('samuel','jackson'),
    ('leonardo','dicaprio'),
    ('kate','winslet'),
    ('tom','hanks'),
    ('marlon','brando'),
    ('al','pacino'),
    ('jamie lee','curtus'),
    ('will','ferrell'),
    ('john','reilly'),
    ('bruce','willis'),
    ('sylveste','stallone'),
    ('sam','worthington'),
    ('zoe','saldana');

insert into actor_movie (actor_id,movie_id)
values
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
