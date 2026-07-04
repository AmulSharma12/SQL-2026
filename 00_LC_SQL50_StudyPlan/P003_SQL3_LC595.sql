-- https://leetcode.com/problems/big-countries/?envType=study-plan-v2&envId=top-sql-50

Select 
name
,population
,area
from World
where population >= 25000000 or area >= 3000000