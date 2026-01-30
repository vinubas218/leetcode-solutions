select id, movie, description, rating
from (
    select id, movie, rating, description
    from Cinema
    where description != "boring" 
            and id % 2 = 1
) t
order by rating desc