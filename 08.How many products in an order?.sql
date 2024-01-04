/*How many products in an order?

List the order_id, product_name and quantity using the products and order_details tables! Sort them ascending by the order_id and descending by quantity!

The result of the query starts with the following lines:

| order_id | product_name | quantity |
|----------|----------------------------------|----------|
| 10248 | Queso Cabrales | 12 |
| 10248 | Singaporean Hokkien Fried Mee | 10 |
| 10248 | Mozzarella di Giovanni | 5 |
| 10249 | Manjimup Dried Apples | 40 |
| 10249 | Tofu | 9 |
| 10250 | Manjimup Dried Apples | 35 |
| 10250 | Louisiana Fiery Hot Pepper Sauce | 15 |
| 10250 | Jack's New England Clam Chowder | 10 |
| 10251 | Louisiana Fiery Hot Pepper Sauce | 20 |
| 10251 | Ravioli Angelo | 15 |
| 10251 | Gustaf's Knäckebröd | 6 |
| 10252 | Sir Rodney's Marmalade | 40 |
| 10252 | Camembert Pierrot | 40 |
| 10252 | Geitost | 25 |*/

SELECT od.order_id, p.product_name, od.quantity
FROM order_details AS od
JOIN products AS p ON od.product_id = p.product_id
ORDER BY od.order_id ASC, od.quantity DESC;
