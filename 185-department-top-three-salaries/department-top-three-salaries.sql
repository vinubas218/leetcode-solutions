select Department, Salary, Employee 
from (
    select d.name as Department,
        e.name as Employee,
        salary as Salary,
        dense_rank() over (partition by d.name order by Salary desc) as rn
    from Employee e
    join Department d
    on e.departmentId = d.id
) t
where rn <= 3