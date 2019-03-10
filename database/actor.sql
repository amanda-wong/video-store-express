-- TABLE CREATION --------------------------------------------------------------
CREATE TABLE actor (
    id serial PRIMARY KEY,
    first_name varchar(15) NOT NULL,
    last_name varchar(15) NOT NULL
);

-- INSERTIONS -------------------------------------------------------------------
INSERT INTO actor (first_name, last_name)
VALUES 
    ('ryan','gosling'),
    ('rachel','mcadams')
    ('emma', 'stone');

INSERT INTO actor (first_name, last_name)
VALUES  
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