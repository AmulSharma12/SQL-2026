-- https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/?envType=study-plan-v2&envId=top-sql-50

-- 570. Managers with at Least 5 Direct Reports

Select 
e.name
from Employee e
inner join Employee e1
    on e1.id != e.id 
    and e1.managerId = e.id
    
group by e.Id
having Count(e1.managerId) >= 5
order by e.id