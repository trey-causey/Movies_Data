USE Movies_Data
GO

--'$159,227,644 '

WITH CTE
(
a_id,
name,
boxoffice_dollars
)
as
(
select
fa.actor_id,
a.full_name,
--CAST(RTRIM(REPLACE(REPLACE(f.box_office, '$', ''), ',', '')) as INT) as 'bo'
CAST(REPLACE(REPLACE(f.box_office, '$', ''), ',', '') as INT)
FROM Movies_Data.dbo.actors a 
JOIN [Movies_Data].[dbo].[film_actors] fa on fa.actor_id = a.id
JOIN Movies_Data.dbo.films f ON f.id = fa.film_id
)
select 
--*,
name,
sum(boxoffice_dollars) as total_bo
from CTE 
group by a_id, name
order by total_runtimes DESC
