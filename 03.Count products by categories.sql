/*Count products by categories

Create a query to reveal how many products are in each category. List categories and number of products. Join the products and categories tables. Name result columns as category and number_of_products, respectively. Order the results by the number_of_products descending and then by the category name.

The result of the query starts with the following lines.

| category | number_of_products |
|---------------- |-------------------- |
| Confections | 13 |
| Beverages | 12 |
| Condiments | 12 |
| Seafood | 12 |
| Dairy Products | 10 |
| Grains/Cereals | 7 |
| Meat/Poultry | 6 |
| Produce | 5 |*/

-- Select category name and count of products in each category
SELECT c.category_name AS category, COUNT(p.product_id) AS number_of_products
FROM categories c
JOIN products p ON c.category_id = p.category_id  -- Joining categories with products on category_id
GROUP BY c.category_name  -- Grouping the results by category name
ORDER BY COUNT(p.product_id) DESC, c.category_name;  -- Ordering by number of products and then by category name
