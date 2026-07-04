-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50

Select 
uni.unique_id
,emp.name
from Employees emp
left join EmployeeUNI uni on uni.id = emp.id