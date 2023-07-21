USE Movies_Data
GO

WITH CTE
(
a_id,
name,
runtime_mins
)
as
(
select
fa.actor_id,
a.full_name,
CAST(TRIM(' min' FROM f.runtime) as INT) as 'min_runtime'
FROM Movies_Data.dbo.actors a 
JOIN [Movies_Data].[dbo].[film_actors] fa on fa.actor_id = a.id
JOIN Movies_Data.dbo.films f ON f.id = fa.film_id
)
select 
--*,
name,
sum(runtime_mins) as total_runtimes
from CTE 
group by a_id, name
order by total_runtimes DESC
