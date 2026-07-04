-- https://leetcode.com/problems/rising-temperature/description/?envType=study-plan-v2&envId=top-sql-50

Select
t.id
from Weather t
inner join Weather y on 
    DATEDIFF(day, y.recordDate, t.recordDate) = 1 and t.temperature > y.temperature