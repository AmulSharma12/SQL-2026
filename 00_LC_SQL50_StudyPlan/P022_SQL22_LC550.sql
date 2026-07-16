-- https://leetcode.com/problems/game-play-analysis-iv/description/?envType=study-plan-v2&envId=top-sql-50

-- 550. Game Play Analysis IV


/* Write your T-SQL query statement below */

Select 
ROUND(
    COUNT(*) * 1.0
    / (Select COUNT(distinct player_id) from Activity) 
    , 2)  as 'fraction'
from Activity a
inner join (
    Select 
    a.player_id,
    MIN(event_date) as event_date
    from Activity a
    group by a.player_id
) fli
    on fli.player_id = a.player_id
    and DATEDIFF(day, fli.event_date, a.event_date) = 1
