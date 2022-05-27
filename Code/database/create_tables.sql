	
CREATE TABLE users (
userID integer NOT NULL PRIMARY KEY
);
	
CREATE TABLE tag (
tagID integer NOT NULL PRIMARY KEY,
userID integer NOT NULL, 
movieID integer NOT NULL,
tag varchar(32) NOT NULL,
tag_timestamp timestamp NOT NULL,
constraint fk_user FOREIGN KEY (userID) REFERENCES users(userID),
constraint fk_movie FOREIGN KEY (movieID) REFERENCES movie(movieID)
);

CREATE TABLE rating (
ratingID integer NOT NULL PRIMARY KEY,
userID integer NOT NULL, 
movieID integer NOT NULL,
rating decimal(1,1) NOT NULL,
rating_timestamp timestamp NOT NULL,
constraint fk_user FOREIGN KEY (userID) REFERENCES users(userID),
constraint fk_movie FOREIGN KEY (movieID) REFERENCES movie(movieID)
);

-- all strings are currently capped at 32 characters, need to test to make sure
-- that's reasonable or change to something more apt
CREATE TABLE movie (
movieID integer NOT NULL PRIMARY KEY,
title varchar(32) NOT NULL
);

CREATE TABLE genre (
genreID integer NOT NULL PRIMARY KEY,
genre_name varchar(32) NOT NULL
);

CREATE TABLE movieGenre(
movieID integer not null,
genreID integer not null,
constraint fk_movie FOREIGN KEY (movieID) REFERENCES movie(movieID),
constraint fk_genre FOREIGN KEY (genreID) REFERENCES genre(genreID),
primary key (movieID, genreID)
);

-- todo: create easy-insert procedures with validation for all tables
-- question: do we need tables for Link, Genome_scores, Genome_tags

-- sequences
create sequence tag_seq start with 1;
create sequence rating_seq start with 1;
create sequence genre_seq start with 1;--  need a sequence for tag, genre, and rating
-- because they're have auto-generated ids
