# Write your MySQL query statement below
Select 
        name,
        coalesce(sum(distance),0) as travelled_distance
from Users U
left join 
    Rides R on U.id = R.user_id
group by user_id
order by travelled_distance desc , name asc ;

