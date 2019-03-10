-- TABLE CREATION  ------------------------------------------------------------------
CREATE TABLE genre (
    id serial PRIMARY KEY,
    genre varchar(20) NOT NULL
);

-- INSERTIONS  ------------------------------------------------------------------
INSERT INTO genre (genre) 
VALUES 
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