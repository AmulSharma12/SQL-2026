-- https://leetcode.com/problems/find-followers-count/description/?envType=study-plan-v2&envId=top-sql-50

-- 1729. Find Followers Count

Select 
f.user_id
, Count(*) as 'followers_count'
from Followers f
group by f.user_id