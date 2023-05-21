  USE Movies_Data_DW
  GO
  
  TRUNCATE TABLE dbo.Dim_MovieData_staging;

  with cte 
  (
  TITLE,YEAR,IMDB_ID,TYPE,POSTER,RATED,RELEASED,RUNTIME,GENRE,DIRECTOR,WRITER,ACTORS,PLOT,LANGUAGE,COUNTRY,
  AWARDS,RATINGS,METASCORE,IMDBRATING,IMDBVOTES,INTERNETMOVIEDATABASE,ROTTENTOMATOES,METACRITIC,DVD,BOXOFFICE,PRODUCTION,WEBSITE
  )
  as (
  SELECT ms.[Title]
      ,ms.[Year]
      ,ms.[imdb_id]
      ,ms.[type]
      ,ms.[poster]
      ,mds.[Rated]
      ,mds.[Released]
      ,mds.[Runtime]
      ,mds.[Genre]
      ,mds.[Director]
      ,mds.[Writer]
      ,mds.[Actors]
      ,mds.[Plot]
      ,mds.[Language]
      ,mds.[Country]
      ,mds.[Awards]
      ,mds.[Ratings]
      ,mds.[Metascore]
      ,mds.[imdbRating]
      ,mds.[imdbVotes]
	  ,mds.[InternetMovieDatabase]
	  ,mds.[RottenTomatoes]
	  ,mds.[Metacritic]
      ,mds.[DVD]
      ,COALESCE(mds.[BoxOffice],'0')
      ,mds.[Production]
      ,mds.[Website]
	   from [Movies_Data_DW].[dbo].[movies_staging] ms
  join [Movies_Data_DW].[dbo].[movie_details_staging] mds on mds.imdbID = ms.imdb_id
  )
  Insert into dbo.Dim_MovieData_staging
  select * from cte

  UPDATE dbo.Dim_MovieData_staging
  SET BOXOFFICE = '$0' where BOXOFFICE = 'N/A'

  --select * from dbo.Dim_MovieData_staging