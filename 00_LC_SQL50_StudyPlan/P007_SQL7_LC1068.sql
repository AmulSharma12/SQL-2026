-- https://leetcode.com/problems/product-sales-analysis-i/?envType=study-plan-v2&envId=top-sql-50

Select product_name, year, price
from sales s
join product p on p.product_id = s.product_id
