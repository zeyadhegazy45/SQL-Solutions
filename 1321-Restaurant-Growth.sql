# Write your MySQL query statement below
with cte as (
    select 
        visited_on,
        sum(amount) as summation
    from Customer
    group by visited_on
)
select visited_on ,amount,average_amount
from (
    select
         visited_on,
    sum(summation) over(order by visited_on asc rows between 6 preceding  and current row) as 'amount',
    round(avg(summation) over (order by visited_on asc rows between 6 preceding and current row),2) as 'average_amount' from cte ) as sub
where date_sub(visited_on, interval 6 day) in (select visited_on from cte)
order by visited_on asc