-- https://leetcode.com/problems/project-employees-i/description/?envType=study-plan-v2&envId=top-sql-50

-- 1075. Project Employees I



/* Write your T-SQL query statement below */

Select 
p.project_id,
NULLIF(
    ROUND( 
        SUM(e.experience_years) * 1.0/ COUNT(e.experience_years)
        , 2)
     , 0)
as 'average_years'
from Project p
left join Employee e 
    on p.employee_id = e.employee_id
group by p.project_id



Select 
p.project_id,
ROUND( AVG( CAST (e.experience_years as DECIMAL(10,2))) , 2) as 'average_years'
from Project p
join Employee e 
    on p.employee_id = e.employee_id
group by p.project_id