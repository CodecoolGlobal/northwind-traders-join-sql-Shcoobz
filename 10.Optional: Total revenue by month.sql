/*Optional: Total revenue by month

Your CEO asks you to help her create her end-of-year presentation. Provide her with the numbers for the year 1997 broken down by months.

The result of the query starts with the following lines.

| year | month | order_count | revenue |
|------|-------|-------------|---------|
| 1997 | 1 | 85 | 61258 |
| 1997 | 2 | 79 | 38484 |
| 1997 | 3 | 77 | 38547 |
| 1997 | 4 | 81 | 53033 |
| 1997 | 5 | 96 | 53781 |
| 1997 | 6 | 76 | 36363 |
| 1997 | 7 | 77 | 51021 |
| 1997 | 8 | 84 | 47288 |
| 1997 | 9 | 95 | 55629 |
| 1997 | 10 | 106 | 66749 |
| 1997 | 11 | 89 | 43534 |
| 1997 | 12 | 114 | 71398 |*/

SELECT EXTRACT(YEAR FROM o.order_date) AS year,
       EXTRACT(MONTH FROM o.order_date) AS month,
       COUNT(o.order_id) AS order_count,
       ROUND(SUM(od.quantity * od.unit_price * (1 - od.discount))::numeric, 0) AS revenue
FROM orders AS o
JOIN order_details AS od ON o.order_id = od.order_id
WHERE EXTRACT(YEAR FROM o.order_date) = 1997
GROUP BY year, month
ORDER BY year, month;
