# Write your MySQL query statement below
select max(salary) as SecondHighestSalary
from Employee
where (select max(salary) from Employee) > salary