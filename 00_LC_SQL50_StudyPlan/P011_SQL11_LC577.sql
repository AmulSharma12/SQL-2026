-- https://leetcode.com/problems/employee-bonus/description/?envType=study-plan-v2&envId=top-sql-50

Select 
e.name, b.bonus
from Employee e
left join Bonus b on b.empId = e.empId
where b.bonus < 1000 or b.bonus is null