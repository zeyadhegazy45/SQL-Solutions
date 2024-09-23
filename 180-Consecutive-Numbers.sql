select Distinct num as ConsecutiveNums
from(
    select L1.num
    from Logs L1
    join Logs L2 on L1.id=L2.id-1 and L1.num =L2.num
    join Logs L3 on L2.id=L3.id-1 and L2.num =L3.num
)zoz