-- https://docs.google.com/spreadsheets/d/1WMi-l8K6szcTkqnGNkFX1BRFnkWr3bE27Ot0SUH5BqI/edit?gid=1990379887#gid=1990379887

-- 1251. Average Selling Price

SELECT
    p.product_id,
    ISNULL(
        ROUND(
            SUM(p.price * us.units) * 1.0
            / NULLIF(SUM(us.units), 0),
            2
        ),
        0
    ) AS average_price
FROM Prices p
LEFT JOIN UnitsSold us
    ON p.product_id = us.product_id
   AND us.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;
