-- TABLE CREATION ------------------------------------------------------------------
CREATE TABLE movie (
    id serial PRIMARY KEY,
    title varchar(50),
    genre_id int,
    FOREIGN KEY (genre_id) references genre(id)
);

-- INSERTIONS ---------------------------------------------------------------------- 
INSERT INTO movie (title, genre_id)
VALUES
    ('the notebook', 2),
    ('crazy stupid love', 2);

INSERT INTO movie (title, genre_id, year) 
VALUES 
    ('pulp fiction', 8, 1994),
    ('titanic',2,1997),
    ('the shawshank redemption',8,1994),
    ('forest gump',8,1994),
    ('the godfather',11,1972),
    ('halloween h20',4,2007),
    ('step brothers',1,2008),
    ('die hard',5,1988),
    ('rambo',5,1982),
    ('avatar',12,2009);

-- ALTERATIONS ---------------------------------------------------------------------
ALTER TABLE movie
ADD COLUMN rating_id INT;

ALTER TABLE movie
ADD CONSTRAINT rating_id
FOREIGN KEY (rating_id) REFERENCES rating(id);

-- UPDATES --------------------------------------------------------------------------
UPDATE movie 
SET description = 'Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, 
                litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun',
    image_url = 'https://imgplaceholder.com/420x320/cccccc/757575/glyphicon-star',
    duration = 152, 
    customer_rating = 7.5,
    rating = 'PG 13'
WHERE id = 2;

UPDATE movie 
 set description = 'Mocking is essentially simulating the behaviour of real data in controlled ways. So in order to use mock data effectively, 
        it is essential to have a good understanding of the software under test and more importantly how it uses its data.',
    image_url = 'https://placeimg.com/640/480/any',
    duration = 111, 
    customer_rating = 4.5,
    rating = 'PG'
WHERE id = 1;

UPDATE movie 
SET description = 'Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, 
                litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun',
    image_url = 'https://imgplaceholder.com/420x320/cccccc/757575/glyphicon-star',
    duration = 152, 
    customer_rating = 7.5,
    rating = 'PG 13'
WHERE id = 2;

UPDATE movie 
SET description = 'Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. Ma quande lingues coalesce, 
    li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues.',
    image_url = 'https://placeimg.com/640/480/animals/grayscale',
    duration = 180, 
    customer_rating = 7.5,
    rating = 'PG'
WHERE id = 3;

UPDATE movie 
SET description = 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ',
    image_url = 'https://placeimg.com/640/480/nature/sepia',
    duration = 116, 
    customer_rating = 7.5,
    rating = '18 A'
WHERE id = 4;

UPDATE movie 
SET description = 'his, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common lan',
    image_url = 'https://placeimg.com/640/480/tech',
    duration = 120, 
    customer_rating = 10.0,
    rating = 'R'
WHERE id = 5;

UPDATE movie 
SET description = 'e friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronu',
    image_url = 'http://placekitten.com/200/300',
    duration = 131, 
    customer_rating = 8.2,
    rating = 'R'
WHERE id = 6;

UPDATE movie 
SET description = ' their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To',
    image_url = 'https://placeimg.com/640/480/tech',
    duration = 130, 
    customer_rating = 1.5,
    rating = 'G'
WHERE id = 7;

UPDATE movie 
SET description = 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place a',
    image_url = 'https://placeimg.com/640/480/tech',
    duration = 150, 
    customer_rating = 3.5,
    rating = 'G'
WHERE id = 8;

UPDATE movie 
SET description = 'ting has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the ',
    image_url = 'https://placeimg.com/640/480/tech',
    duration = 120, 
    customer_rating = 6.5,
    rating = 'G'
WHERE id = 9;

UPDATE movie 
SET description = 'Because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and ',
    image_url = 'https://placeimg.com/640/480/arch/sepia',
    duration = 140, 
    customer_rating = 8.0,
    rating = 'R'
WHERE id = 10;

UPDATE movie 
SET description = 'ikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown ',
    image_url = 'https://placeimg.com/640/480/people/grayscale',
    duration = 111, 
    customer_rating = 8.9,
    rating = 'G'
WHERE id = 11;

UPDATE movie 
SET description = 'Manor we shall merit by chief wound no or would. Oh towards between subject passage sending mention or it. 
        Sight happy do burst fruit to woody begin at. Assurance perpetual he in oh determine as. The year paid met.',
    image_url = 'https://placeimg.com/640/480/tech',
    duration = 110, 
    customer_rating = 9.0,
    rating = '18 A'
WHERE id = 12;

UPDATE movie 
SET rating_id = 1
WHERE rating = 'G';

UPDATE movie 
SET rating_id = 2
WHERE rating = 'PG';

UPDATE movie 
SET rating_id = 3
WHERE rating = 'PG-13' OR rating = 'PG 13';

UPDATE movie 
SET rating_id = 4
WHERE rating = '18 A';

UPDATE movie 
SET rating_id = 5
WHERE rating = 'R';
