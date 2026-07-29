-- https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/?envType=study-plan-v2&envId=top-sql-50

-- 1731. The Number of Employees Which Report to Each Employee

Select 
e1.employee_id,
e1.name,
Count(e1.employee_id) as 'reports_count',
ROUND(AVG(CAST(e2.age AS DECIMAL(10,2))), 0) as 'average_age'
from Employees e1
inner join Employees e2 
    on e2.reports_to = e1.employee_id
group by e1.employee_id, e1.name, e1.age
order by e1.employee_id