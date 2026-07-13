-- https://leetcode.com/problems/monthly-transactions-i/description/?envType=study-plan-v2&envId=top-sql-50


-- 1193. Monthly Transactions I

Select 
FORMAT(t.trans_date, 'yyyy-MM') as month
,t.country
, Count(*) trans_count
, SUM(
    CASE 
        WHEN t.state = 'approved'
            THEN 1
            ELSE 0 
    END
) approved_count
, SUM(t.amount) trans_total_amount
, SUM(
    CASE
        WHEN t.state = 'approved'
        THEN t.amount
        ELSE 0 
    END
) approved_total_amount
from Transactions t
group by FORMAT(t.trans_date, 'yyyy-MM'), t.country
order by month