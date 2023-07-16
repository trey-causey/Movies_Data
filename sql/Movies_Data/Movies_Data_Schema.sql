USE Movies_Data
GO

DROP TABLE IF EXISTS films

CREATE TABLE films (
  id int NOT NULL IDENTITY,
  imdb_id VARCHAR(100),
  title VARCHAR(100),
  [year] INT,
  rated VARCHAR(10),
  released DATE,
  runtime VARCHAR(10),
  plot VARCHAR(MAX),
  poster VARCHAR(200),
  metascore INT,
  metacritic VARCHAR(10),
  internet_movie_database VARCHAR(10),
  rotten_tomatoes VARCHAR(10),
  imdb_rating DECIMAL(3,1),
  imdb_votes VARCHAR(20),
  [type] VARCHAR(10),
  dvd DATE,
  --box_office MONEY
  box_office VARCHAR(20)
);


DROP TABLE IF EXISTS actors

CREATE TABLE actors (
  id int NOT NULL IDENTITY,
  full_name NVARCHAR(45) NOT NULL,
  last_update DATETIME NOT NULL DEFAULT (GETDATE()),
  PRIMARY KEY NONCLUSTERED (id)
)
GO

DROP TABLE IF EXISTS directors

CREATE TABLE directors (
  id int NOT NULL IDENTITY,
  full_name NVARCHAR(45) NOT NULL,
  last_update DATETIME NOT NULL DEFAULT (GETDATE()),
  PRIMARY KEY NONCLUSTERED (id)
)
GO

DROP TABLE IF EXISTS writers

CREATE TABLE writers (
  id int NOT NULL IDENTITY,
  full_name NVARCHAR(45) NOT NULL,
  last_update DATETIME NOT NULL DEFAULT (GETDATE()),
  PRIMARY KEY NONCLUSTERED (id)
)
GO

DROP TABLE IF EXISTS genres

CREATE TABLE genres (
  id int NOT NULL IDENTITY,
  name NVARCHAR(45) NOT NULL,
  last_update DATETIME NOT NULL DEFAULT (GETDATE()),
  PRIMARY KEY NONCLUSTERED (id)
)
GO

DROP TABLE IF EXISTS languages

CREATE TABLE languages (
  id int NOT NULL IDENTITY,
  name NVARCHAR(45) NOT NULL,
  last_update DATETIME NOT NULL DEFAULT (GETDATE()),
  PRIMARY KEY NONCLUSTERED (id)
)
GO

DROP TABLE IF EXISTS countries

CREATE TABLE countries (
  id int NOT NULL IDENTITY,
  name NVARCHAR(45) NOT NULL,
  last_update DATETIME NOT NULL DEFAULT (GETDATE()),
  PRIMARY KEY NONCLUSTERED (id)
)
GO

DROP TABLE IF EXISTS film_actors

CREATE TABLE film_actors (
  film_id int NOT NULL,
  actor_id int NOT NULL,
  last_update DATETIME NOT NULL DEFAULT (GETDATE()),
  PRIMARY KEY NONCLUSTERED (film_id, actor_id)
)
GO

DROP TABLE IF EXISTS film_directors

CREATE TABLE film_directors (
  film_id int NOT NULL,
  director_id int NOT NULL,
  last_update DATETIME NOT NULL DEFAULT (GETDATE()),
  PRIMARY KEY NONCLUSTERED (film_id, director_id)
)
GO

DROP TABLE IF EXISTS film_writers

CREATE TABLE film_writers (
  film_id int NOT NULL,
  writer_id int NOT NULL,
  last_update DATETIME NOT NULL DEFAULT (GETDATE()),
  PRIMARY KEY NONCLUSTERED (film_id, writer_id)
)
GO

DROP TABLE IF EXISTS film_genres

CREATE TABLE film_genres (
  film_id int NOT NULL,
  genre_id int NOT NULL,
  last_update DATETIME NOT NULL DEFAULT (GETDATE()),
  PRIMARY KEY NONCLUSTERED (film_id, genre_id)
)
GO

DROP TABLE IF EXISTS film_languages

CREATE TABLE film_languages (
  film_id int NOT NULL,
  language_id int NOT NULL,
  last_update DATETIME NOT NULL DEFAULT (GETDATE()),
  PRIMARY KEY NONCLUSTERED (film_id, language_id)
)
GO

DROP TABLE IF EXISTS film_countries

CREATE TABLE film_countries (
  film_id int NOT NULL,
  country_id int NOT NULL,
  last_update DATETIME NOT NULL DEFAULT (GETDATE()),
  PRIMARY KEY NONCLUSTERED (film_id, country_id)
)
GO

