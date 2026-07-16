-- https://leetcode.com/problems/immediate-food-delivery-ii/?envType=study-plan-v2&envId=top-sql-50


-- 1174. Immediate Food Delivery II


SELECT
    ROUND(
        SUM(
            CASE
                WHEN d.order_date = d.customer_pref_delivery_date THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS immediate_percentage
FROM Delivery d
JOIN
(
    SELECT
        customer_id,
        MIN(order_date) AS first_order_date
    FROM Delivery
    GROUP BY customer_id
) first_orders
ON d.customer_id = first_orders.customer_id
AND d.order_date = first_orders.first_order_date;