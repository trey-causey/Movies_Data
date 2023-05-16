  USE Movies_Data_DW
  GO
  
  with cte 
  (
  TITLE,YEAR,IMDB_ID,TYPE,POSTER,RATED,RELEASED,RUNTIME,GENRE,DIRECTOR,WRITER,ACTORS,PLOT,LANGUAGE,COUNTRY,AWARDS,RATINGS,METASCORE,IMDBRATING,IMDBVOTES,DVD,BOXOFFICE,PRODUCTION,WEBSITE
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
      ,mds.[DVD]
      ,mds.[BoxOffice]
      ,mds.[Production]
      ,mds.[Website]
	   from [Movies_Data_DW].[dbo].[movies_staging] ms
  join [Movies_Data_DW].[dbo].[movie_details_staging] mds on mds.imdbID = ms.imdb_id
  )
  Insert into dbo.Dim_MovieData_staging
  select * from cte

  --select * from dbo.Dim_MovieData_staging