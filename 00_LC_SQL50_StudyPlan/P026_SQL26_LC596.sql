-- https://leetcode.com/problems/classes-with-at-least-5-students/description/?envType=study-plan-v2&envId=top-sql-50

-- 596. Classes With at Least 5 Students


Select 
class
from Courses 
group by class
having Count(student) >= 5