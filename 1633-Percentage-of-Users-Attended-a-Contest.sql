# Write your MySQL query statement below
select 
    contest_id,
    round((count(distinct R.user_id)/(select count(user_id) from Users))*100,2) as percentage
from
    Users U
join 
    Register R on U.user_id=R.user_id
group by contest_id
order by percentage desc , contest_id asc
