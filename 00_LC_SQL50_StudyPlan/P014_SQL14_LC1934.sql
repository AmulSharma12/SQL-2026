-- https://leetcode.com/problems/confirmation-rate/?envType=study-plan-v2&envId=top-sql-50

-- 1934. Confirmation Rate

SELECT
    s.user_id,
    ROUND(
        ISNULL(
            SUM(CASE
                    WHEN c.action = 'confirmed' THEN 1.0
                    ELSE 0
                END)
            / NULLIF(COUNT(c.action), 0),
        0),
    2) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
    ON s.user_id = c.user_id
GROUP BY s.user_id
ORDER BY s.user_id;