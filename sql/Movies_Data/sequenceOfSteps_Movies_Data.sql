/
USE Movies_Data_DB
GO

select * FROM Movies_Data_DB.dbo.actor
select * FROM Movies_Data_DB.dbo.director
select * FROM Movies_Data_DB.dbo.writer
select * FROM Movies_Data_DB.dbo.genre
select * FROM Movies_Data_DB.dbo.country
select * FROM Movies_Data_DB.[dbo].[language]
select * FROM Movies_Data_DB.[dbo].[titles]

SELECT * FROM [Movies_Data_DB].[dbo].[film_actor_staging]
SELECT * FROM [Movies_Data_DB].[dbo].[film_director_staging]
SELECT * FROM [Movies_Data_DB].[dbo].[film_writer_staging]
SELECT * FROM [Movies_Data_DB].[dbo].[film_genre_staging]
SELECT * FROM [Movies_Data_DB].[dbo].[film_country_staging]
SELECT * FROM [Movies_Data_DB].[dbo].[film_language_staging]

SELECT * FROM [Movies_Data_DB].[dbo].[film_actor]
SELECT * FROM [Movies_Data_DB].[dbo].[film_director]
SELECT * FROM [Movies_Data_DB].[dbo].[film_writer]
SELECT * FROM [Movies_Data_DB].[dbo].[film_genre]
SELECT * FROM [Movies_Data_DB].[dbo].[film_country]
SELECT * FROM [Movies_Data_DB].[dbo].[film_language]