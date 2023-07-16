  select 
  rated,
  sum(METASCORE) as 'metasum'
    FROM [Movies_Data_DW].[dbo].[Dim_MovieData_staging]
	group by rated
	  --select * FROM [Movies_Data_DW].[dbo].[Dim_MovieData_staging]

SELECT TOP (1000) [TITLE]
      ,[YEAR]
      ,[IMDB_ID]
      ,[TYPE]
      ,[POSTER]
      ,[RATED]
      ,[RELEASED]
      ,[RUNTIME]
      ,[GENRE]
      ,[DIRECTOR]
      ,[WRITER]
      ,[ACTORS]
      ,[PLOT]
      ,[LANGUAGE]
      ,[COUNTRY]
      ,[AWARDS]
      ,[RATINGS]
      ,[METASCORE]
      ,[IMDBRATING]
      ,[IMDBVOTES]
      ,[INTERNETMOVIEDATABASE]
      ,[ROTTENTOMATOES]
      ,[METACRITIC]
      ,[DVD]
      ,[BOXOFFICE]
      ,[PRODUCTION]
      ,[WEBSITE]
  FROM [Movies_Data_DW].[dbo].[Dim_MovieData_staging]
  ORDER BY Title

