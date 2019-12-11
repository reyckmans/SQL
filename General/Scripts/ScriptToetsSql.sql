CREATE TABLE Movie(
	ID int PRIMARY KEY UNIQUE, /*een kolom maken met naam id deze is de PK en is UNIQUE*/
	titel Text ,
	yearOfRelease DATE,
	genre Text,
);

CREATE TABLE Genre(
	ID int PRIMARY KEY,
	GenreName Text
);

DROP TABLE Movie;

CREATE TABLE Movie(
	ID PRIMARY KEY UNIQUE,
	titel Text ,
	yearOfRelease DATE,
	genre int,
	FOREIGN KEY (genre) REFERENCES Genre(ID) 
);

DROP TABLE Genre;

CREATE TABLE Genre(
	ID int PRIMARY KEY,
	GenreName Text UNIQUE
);

DROP TABLE Movie;

CREATE TABLE Movie(
	ID PRIMARY KEY UNIQUE,
	titel Text ,
	yearOfRelease int,
	genre int,
	FOREIGN KEY (genre) REFERENCES Genre(ID) /*een FK leggen naar een andere tabel*/
);

INSERT INTO Movie VALUES (0, 'Cars', 2006, 'Animatie');
INSERT INTO Movie VALUES (1, 'Cars2', 2011, 'Animatie');
INSERT INTO Movie VALUES (2, 'Coach Carter', 2006, 'Sport/Drama');

SELECT * FROM Movie;