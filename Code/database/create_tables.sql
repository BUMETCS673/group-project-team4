	
CREATE TABLE users (
userID integer NOT NULL PRIMARY KEY,
fullname varchar(64)
);
	
CREATE TABLE tag (
tagID integer NOT NULL PRIMARY KEY,
userID integer NOT NULL, 
movieID integer NOT NULL,
tag varchar(256) NOT NULL,
tag_timestamp timestamp NOT NULL,
constraint fk_user FOREIGN KEY (userID) REFERENCES users(userID),
constraint fk_movie FOREIGN KEY (movieID) REFERENCES movie(movieID)
);

CREATE TABLE rating (
ratingID integer NOT NULL PRIMARY KEY,
userID integer NOT NULL, 
movieID integer NOT NULL,
rating decimal(2,1) NOT NULL,
rating_timestamp timestamp NOT NULL,
constraint fk_user FOREIGN KEY (userID) REFERENCES users(userID),
constraint fk_movie FOREIGN KEY (movieID) REFERENCES movie(movieID)
);


CREATE TABLE movie (
movieID integer NOT NULL PRIMARY KEY,
title varchar(200) NOT NULL
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

