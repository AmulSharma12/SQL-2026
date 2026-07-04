-- https://leetcode.com/problems/recyclable-and-low-fat-products/description/?envType=study-plan-v2&envId=top-sql-50

Select product_id
from Products
where low_fats = 'Y' and recyclable = 'Y'