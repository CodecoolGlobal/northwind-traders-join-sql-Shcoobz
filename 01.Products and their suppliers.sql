/*Products and their suppliers

Create a query that shows which product is made by which company. Lists products and their suppliers. Display the product_name and the company_name of the supplier. Name result columns as product and company respectively. Order the results alphabetically by product_name and by company_name.

The result of the query starts with the following lines.

| product | company |
|-------------------|-----------------------------|
| Alice Mutton | Pavlova, Ltd. |
| Aniseed Syrup | Exotic Liquids |
| Boston Crab Meat | New England Seafood Cannery |
| Camembert Pierrot | Gai pâturage |
| Carnarvon Tigers | Pavlova, Ltd. |*/

-- Select product_name and company_name from products and suppliers tables
SELECT p.product_name AS product, s.company_name AS company FROM products p
JOIN suppliers s ON p.supplier_id = s.supplier_id  -- Joining products with suppliers on supplier_id
ORDER BY p.product_name, s.company_name;  -- Ordering results by product_name and company_name
