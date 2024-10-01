Select
        id,count(*)as num
from(
    select requester_id as id from RequestAccepted
    union all
    Select accepter_id as id from RequestAccepted
)as req
group by id 
order by num desc, id 
limit 1;