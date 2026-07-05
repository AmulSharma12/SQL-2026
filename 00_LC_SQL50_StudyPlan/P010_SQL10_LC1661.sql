-- https://leetcode.com/problems/average-time-of-process-per-machine/description/?envType=study-plan-v2&envId=top-sql-50

Select 
a1.machine_id,
Round(AVG(a2.timestamp - a1.timestamp), 3) as 'processing_time' 
from Activity a1
inner join Activity a2 
    on a2.machine_id = a1.machine_id
    and a2.process_id = a1.process_id
    and a1.activity_type = 'start'
    and a2.activity_type = 'end'
group by a1.machine_id