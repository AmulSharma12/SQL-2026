-- https://leetcode.com/problems/queries-quality-and-percentage/description/?envType=study-plan-v2&envId=top-sql-50

-- 1211. Queries Quality and Percentage

/* Write your T-SQL query statement below */
SELECT
    q.query_name,
    ROUND(
        AVG(q.rating * 1.0 / q.position),
        2
    ) AS quality,
    ROUND(
        SUM(
            CASE
                WHEN q.rating < 3 THEN 1
                ELSE 0
            END
        ) * 100.0
        / COUNT(*),
        2
    ) AS poor_query_percentage
FROM Queries q
GROUP BY q.query_name;