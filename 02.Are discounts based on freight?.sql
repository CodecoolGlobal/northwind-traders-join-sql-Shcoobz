/*Are discounts based on freight?

List the order_id, freight and discount from the orders and order_details tables distinctively! 
Filter to show only those records, where the customer got a discount (= larger than 0), 
and order the results by the freight of the ship!

The result of the query starts with the following lines.

| order_id | freight | discount |
|----------|---------|----------|
| 10372 | 890.78 | 0.25 |
| 11030 | 830.75 | 0.25 |
| 10816 | 719.78 | 0.05 |
| 10983 | 657.54 | 0.15 |
| 10912 | 580.91 | 0.25 |
| 10847 | 487.57 | 0.2 |
| 10633 | 477.9 | 0.15 |
| 10430 | 458.78 | 0.2 |*/

-- Select order_id, freight, and discount from orders and order_details tables
SELECT DISTINCT o.order_id, o.freight, od.discount
FROM orders o
JOIN order_details od ON o.order_id = od.order_id  -- Joining orders with order_details on order_id
WHERE od.discount > 0  -- Filtering for records where discount is greater than 0
ORDER BY o.freight;  -- Ordering the results by the freight amount
