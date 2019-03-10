-- TABLE CREATION --------------------------------------------------------------
CREATE TABLE rating (
    id serial PRIMARY KEY,
    rating varchar(5) NOT NULL
);

-- INSERTIONS  --------------------------------------------------------------
INSERT INTO rating (rating)
VALUES 
    ('G'),
    ('PG'),
    ('PG-13'),
    ('18-A'),
    ('R');