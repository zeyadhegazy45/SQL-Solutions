select 
    D.name AS Department,
    E.name AS Employee,
    salary
from 
    Department D
join 
    Employee E on D.id = E.departmentId
where  
    E.salary = (
        select max(salary)
        from Employee
        where departmentId = D.id
    );