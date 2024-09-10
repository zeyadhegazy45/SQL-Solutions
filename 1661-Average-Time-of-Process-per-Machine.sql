select A1.machine_id , round(avg(A2.timestamp -A1.timestamp),3) as processing_time
from Activity A1 join Activity A2
on A1.process_id =A2.process_id and A2.activity_type='end' and A1.activity_type='start'
and  A1.machine_id=A2.machine_id
group by A1.machine_id