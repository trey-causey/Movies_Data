Use Movies_Data_DW
GO

DROP TABLE IF EXISTS movie_details_staging


CREATE TABLE movie_details_staging (
    Title NVARCHAR(255),
    Year INT,
    Rated NVARCHAR(10),
    Released DATE,
    Runtime NVARCHAR(50),
    Genre NVARCHAR(255),
    Director NVARCHAR(255),
    Writer NVARCHAR(MAX),
    Actors NVARCHAR(MAX),
    Plot NVARCHAR(MAX),
    Language NVARCHAR(255),
    Country NVARCHAR(255),
    Awards NVARCHAR(MAX),
    Poster NVARCHAR(MAX),
    Ratings NVARCHAR(MAX),
    Metascore INT,
    imdbRating Float,
    imdbVotes NVARCHAR(50),
	InternetMovieDatabase NVARCHAR(20),
	RottenTomatoes NVARCHAR(20),
	Metacritic NVARCHAR(20),
    imdbID NVARCHAR(50),
    [Type] NVARCHAR(50),
    DVD DATE,
    BoxOffice NVARCHAR(255),
    Production NVARCHAR(MAX),
    Website NVARCHAR(MAX)
    --Response BIT
);--select * from movie_details_staging

BULK INSERT movie_details_staging
FROM 'C:\My\Workspace\Python_Projects\Movies_Data\output_files\movie_list_detail.csv'
WITH
(
    FIELDTERMINATOR = '|',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2 -- skipping the header row
);

/**
CREATE TABLE movie_details_staging (
    imdbID NVARCHAR(50),
    Title NVARCHAR(255),
    Year INT,
    Rated NVARCHAR(10),
    Released DATE,
    Runtime NVARCHAR(50),
    Genre NVARCHAR(255),
    Director NVARCHAR(255),
    Actors NVARCHAR(MAX)
);--select * from movie_details_staging


INSERT INTO movie_details_staging
SELECT * 
FROM OPENROWSET('MSDASQL',
'Driver={Microsoft Access Text Driver (*.txt, *.csv)};DefaultDir=C:\My\Workspace\Python_Projects\Movies_Data\output_files\;Extensions=csv;',
'SELECT Title, Year, Rated, Released, Runtime, Genre, Director, Writer, Actors, imdbID FROM [movie_list_detail.csv]')
**/
