USE Movies_Data
GO

-- Truncate and load actors from films.csv
TRUNCATE TABLE [Movies_Data].[dbo].[films]

BULK INSERT [Movies_Data].[dbo].[films]
FROM 'C:\My\Workspace\Python_Projects\Movies_Data\input_files\Relational\films.csv'
WITH
(
    FIELDTERMINATOR = '|',
    --ROWTERMINATOR = '\n',
	ROWTERMINATOR = '0x0A',
    FIRSTROW = 2, -- skipping the header row
    DATAFILETYPE = 'char', -- Specify the file type as 'char' to handle data conversion
    TABLOCK, -- Use a tablock during the bulk insert operation
	CODEPAGE = '65001' -- Specify the appropriate codepage for the input file
);
--select * from dbo.films

-- Truncate and load actors from actors.csv
TRUNCATE TABLE [Movies_Data].[dbo].[actors]

BULK INSERT [Movies_Data].[dbo].[actors]
FROM 'C:\My\Workspace\Python_Projects\Movies_Data\input_files\Relational\actors.csv'
WITH
(
    FIELDTERMINATOR = '|',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2, -- skipping the header row
    DATAFILETYPE = 'char', -- Specify the file type as 'char' to handle data conversion
    KEEPNULLS, -- Preserve null values in the file
    TABLOCK, -- Use a tablock during the bulk insert operation
	CODEPAGE = '65001' -- Specify the appropriate codepage for the input file
);

-- Truncate and load actors from directors.csv
TRUNCATE TABLE [Movies_Data].[dbo].[directors]

BULK INSERT [Movies_Data].[dbo].[directors]
FROM 'C:\My\Workspace\Python_Projects\Movies_Data\input_files\Relational\directors.csv'
WITH
(
    FIELDTERMINATOR = '|',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2, -- skipping the header row
    DATAFILETYPE = 'char', -- Specify the file type as 'char' to handle data conversion
    KEEPNULLS, -- Preserve null values in the file
    TABLOCK, -- Use a tablock during the bulk insert operation
	CODEPAGE = '65001' -- Specify the appropriate codepage for the input file
);

-- Truncate and load actors from writers.csv
TRUNCATE TABLE [Movies_Data].[dbo].[writers]

BULK INSERT [Movies_Data].[dbo].[writers]
FROM 'C:\My\Workspace\Python_Projects\Movies_Data\input_files\Relational\writers.csv'
WITH
(
    FIELDTERMINATOR = '|',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2, -- skipping the header row
    DATAFILETYPE = 'char', -- Specify the file type as 'char' to handle data conversion
    KEEPNULLS, -- Preserve null values in the file
    TABLOCK, -- Use a tablock during the bulk insert operation
	CODEPAGE = '65001' -- Specify the appropriate codepage for the input file
);

-- Truncate and load genres from genres.csv
TRUNCATE TABLE [Movies_Data].[dbo].[genres]

BULK INSERT [Movies_Data].[dbo].[genres]
FROM 'C:\My\Workspace\Python_Projects\Movies_Data\input_files\Relational\genres.csv'
WITH
(
    FIELDTERMINATOR = '|',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2, -- skipping the header row
    DATAFILETYPE = 'char', -- Specify the file type as 'char' to handle data conversion
    KEEPNULLS, -- Preserve null values in the file
    TABLOCK, -- Use a tablock during the bulk insert operation
	CODEPAGE = '65001' -- Specify the appropriate codepage for the input file
);

-- Truncate and load languages from languages.csv
TRUNCATE TABLE [Movies_Data].[dbo].[languages]

BULK INSERT [Movies_Data].[dbo].[languages]
FROM 'C:\My\Workspace\Python_Projects\Movies_Data\input_files\Relational\languages.csv'
WITH
(
    FIELDTERMINATOR = '|',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2, -- skipping the header row
    DATAFILETYPE = 'char', -- Specify the file type as 'char' to handle data conversion
    KEEPNULLS, -- Preserve null values in the file
    TABLOCK, -- Use a tablock during the bulk insert operation
	CODEPAGE = '65001' -- Specify the appropriate codepage for the input file
);

-- Truncate and load countries from countries.csv
TRUNCATE TABLE [Movies_Data].[dbo].[countries]

BULK INSERT [Movies_Data].[dbo].[countries]
FROM 'C:\My\Workspace\Python_Projects\Movies_Data\input_files\Relational\countries.csv'
WITH
(
    FIELDTERMINATOR = '|',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2, -- skipping the header row
    DATAFILETYPE = 'char', -- Specify the file type as 'char' to handle data conversion
    KEEPNULLS, -- Preserve null values in the file
    TABLOCK, -- Use a tablock during the bulk insert operation
	CODEPAGE = '65001' -- Specify the appropriate codepage for the input file
);

-- Truncate and load countries from film_actors.csv
TRUNCATE TABLE [Movies_Data].[dbo].[film_actors]

BULK INSERT [Movies_Data].[dbo].[film_actors]
FROM 'C:\My\Workspace\Python_Projects\Movies_Data\input_files\Relational\film_actors.csv'
WITH
(
    FIELDTERMINATOR = '|',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2, -- skipping the header row
    DATAFILETYPE = 'char', -- Specify the file type as 'char' to handle data conversion
    KEEPNULLS, -- Preserve null values in the file
    TABLOCK, -- Use a tablock during the bulk insert operation
	CODEPAGE = '65001' -- Specify the appropriate codepage for the input file
);


-- Truncate and load countries from film_directors.csv
TRUNCATE TABLE [Movies_Data].[dbo].[film_directors]

BULK INSERT [Movies_Data].[dbo].[film_directors]
FROM 'C:\My\Workspace\Python_Projects\Movies_Data\input_files\Relational\film_directors.csv'
WITH
(
    FIELDTERMINATOR = '|',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2, -- skipping the header row
    DATAFILETYPE = 'char', -- Specify the file type as 'char' to handle data conversion
    KEEPNULLS, -- Preserve null values in the file
    TABLOCK, -- Use a tablock during the bulk insert operation
	CODEPAGE = '65001' -- Specify the appropriate codepage for the input file
);


-- Truncate and load countries from film_writers.csv
TRUNCATE TABLE [Movies_Data].[dbo].[film_writers]

BULK INSERT [Movies_Data].[dbo].[film_writers]
FROM 'C:\My\Workspace\Python_Projects\Movies_Data\input_files\Relational\film_writers.csv'
WITH
(
    FIELDTERMINATOR = '|',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2, -- skipping the header row
    DATAFILETYPE = 'char', -- Specify the file type as 'char' to handle data conversion
    KEEPNULLS, -- Preserve null values in the file
    TABLOCK, -- Use a tablock during the bulk insert operation
	CODEPAGE = '65001' -- Specify the appropriate codepage for the input file
);
-- Truncate and load countries from film_genres.csv
TRUNCATE TABLE [Movies_Data].[dbo].[film_genres]

BULK INSERT [Movies_Data].[dbo].[film_genres]
FROM 'C:\My\Workspace\Python_Projects\Movies_Data\input_files\Relational\film_genres.csv'
WITH
(
    FIELDTERMINATOR = '|',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2, -- skipping the header row
    DATAFILETYPE = 'char', -- Specify the file type as 'char' to handle data conversion
    KEEPNULLS, -- Preserve null values in the file
    TABLOCK, -- Use a tablock during the bulk insert operation
	CODEPAGE = '65001' -- Specify the appropriate codepage for the input file
);

-- Truncate and load countries film_languages.csv
TRUNCATE TABLE [Movies_Data].[dbo].[film_languages]

BULK INSERT [Movies_Data].[dbo].[film_languages]
FROM 'C:\My\Workspace\Python_Projects\Movies_Data\input_files\Relational\film_languages.csv'
WITH
(
    FIELDTERMINATOR = '|',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2, -- skipping the header row
    DATAFILETYPE = 'char', -- Specify the file type as 'char' to handle data conversion
    KEEPNULLS, -- Preserve null values in the file
    TABLOCK, -- Use a tablock during the bulk insert operation
	CODEPAGE = '65001' -- Specify the appropriate codepage for the input file
);

-- Truncate and load countries from film_countries.csv
TRUNCATE TABLE [Movies_Data].[dbo].[film_countries]

BULK INSERT [Movies_Data].[dbo].[film_countries]
FROM 'C:\My\Workspace\Python_Projects\Movies_Data\input_files\Relational\film_countries.csv'
WITH
(
    FIELDTERMINATOR = '|',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2, -- skipping the header row
    DATAFILETYPE = 'char', -- Specify the file type as 'char' to handle data conversion
    KEEPNULLS, -- Preserve null values in the file
    TABLOCK, -- Use a tablock during the bulk insert operation
	CODEPAGE = '65001' -- Specify the appropriate codepage for the input file
);