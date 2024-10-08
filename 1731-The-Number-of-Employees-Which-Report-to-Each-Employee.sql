Select E1.employee_id,
        E1.name ,
        count(E2.reports_to) as reports_count,
       round(avg(E2.age),0) as average_age

from Employees E1
join Employees E2 on E1.employee_id =E2.reports_to
group by  E1.employee_id, E1.name 

order by  E1.employee_id