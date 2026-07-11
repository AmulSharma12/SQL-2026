-- https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/?envType=study-plan-v2&envId=top-sql-50

-- 1633. Percentage of Users Attended a Contest

/* Write your T-SQL query statement below */


Select 
reg.contest_id, 
Round(
    Count(reg.user_id) * 1.0/(Select Count(*) from Users) * 100, 2
)
as 'percentage'
from Register reg
join Users us
    on us.user_id = reg.user_id
group by reg.contest_id
order by 'percentage' desc , reg.contest_id 