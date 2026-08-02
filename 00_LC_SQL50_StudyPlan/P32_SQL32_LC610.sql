-- https://leetcode.com/problems/triangle-judgement/description/?envType=study-plan-v2&envId=top-sql-50

-- 610. Triangle Judgement

/* Write your T-SQL query statement below */

Select 
x,
y,
z,
CASE 
    WHEN x+y > z and x+z > y and y+z > x THEN 'Yes'
    ELSE 'No'
END
as 'triangle'
from Triangle