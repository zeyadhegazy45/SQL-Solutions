# Write your MySQL query statement below
select 
        firstname,
        lastname,
        city,
        state
from
     Person P
left join 
    Address A on P.personId = A.personId

       