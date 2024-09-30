# Write your MySQL query statement below
with cte as (
select 
    D.name as Department,
    E.name as Employee,
    salary as Salary,
    Dense_rank() over (partition by  departmentId order by salary desc ) as sal
from 
        Employee E
join 
        Department D
on E.departmentId= D.id 
)
select
    Department,
    Employee,
    Salary
from cte
where sal <=3
