-- https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50

Select
v.customer_id, count(*) as 'count_no_trans' 
from Visits v
left join Transactions t on t.visit_id = v.visit_id
where t.visit_id is null 
group by v.customer_id