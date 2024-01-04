/*Earnings per products in 97

List the best earning products of 1997! To do so, you need to list theproduct name and calculate the sum of the quantity ordered multiplied by their unit_price and (1 - discount), name this number as sum_price. Show the 10 highest earning product in a descending order!

The result of the query starts with the following lines (the sum_price is rounded):

product_name	sum_price
Côte de Blaye	49198
Raclette Courdavault	35775
Thüringer Rostbratwurst	34756
Gnocchi di nonna Alice	32604
Manjimup Dried Apples	24571
Tarte au sucre	21638
Camembert Pierrot	20505
Alice Mutton	17605
Carnarvon Tigers	15950
Gudbrandsdalsost	13949
*/

SELECT p.product_name,
       ROUND(SUM((od.quantity * od.unit_price * (1 - od.discount)))::numeric, 0) AS sum_price
FROM products AS p
JOIN order_details AS od ON p.product_id = od.product_id
JOIN orders AS o ON od.order_id = o.order_id
WHERE EXTRACT(YEAR FROM o.order_date) = 1997
GROUP BY p.product_name
ORDER BY sum_price DESC
LIMIT 10;
