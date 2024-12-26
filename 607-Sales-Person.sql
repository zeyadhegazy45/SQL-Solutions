# Write your MySQL query statement below
with cte as (
    select 
        sales_id 
    from 
        Orders O
    join 
        Company C on O.com_id=C.com_id
    where C.name = 'RED'
)
select 
    name 
from 
    SalesPerson S
where S.sales_id not in (select sales_id from cte)
