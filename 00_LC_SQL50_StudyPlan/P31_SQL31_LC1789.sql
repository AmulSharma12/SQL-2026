-- https://leetcode.com/problems/primary-department-for-each-employee/description/?envType=study-plan-v2&envId=top-sql-50

-- 1789. Primary Department for Each Employee

SELECT
    employee_id,
    COALESCE(
        MAX(CASE WHEN primary_flag = 'Y' THEN department_id END),
        MAX(department_id)
    ) AS department_id
FROM Employee
GROUP BY employee_id;