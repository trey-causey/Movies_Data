USE Movies_Data_DW
GO

DROP TABLE IF EXISTS movies_staging

CREATE TABLE movies_staging (
    title NVARCHAR(100),  -- Allowing for long movie titles
    year INT,             -- Assuming year is a four-digit number
    imdb_id NVARCHAR(20), -- Assuming IMDB id is alphanumeric and not exceeding 20 characters
    type NVARCHAR(50),    -- Assuming type is a short text like 'movie', 'series', etc.
    poster NVARCHAR(MAX)  -- Allowing for long URLs
);

BULK INSERT movies_staging
FROM 'C:\My\Workspace\Python_Projects\Movies_Data\output_files\\movie_list.csv'
WITH
(
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2 -- skipping the header row
);

