select class 
from (
    select class,
        dense_rank() over (partition by class order by student) as rn
    from Courses
) t
group by class
having count(rn) >= 5
