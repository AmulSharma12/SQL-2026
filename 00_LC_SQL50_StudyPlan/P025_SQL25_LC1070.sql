-- https://leetcode.com/problems/product-sales-analysis-iii/description/?envType=study-plan-v2&envId=top-sql-50


-- 1070. Product Sales Analysis III

Select 
s.product_id,
firstSale.first_year,
s.quantity,
s.price
from Sales s
inner join (
Select 
    product_id,
    MIN(year) as 'first_year'
from Sales
group by product_id ) as firstSale
on firstSale.product_id = s.product_id and firstSale.first_year = s.year