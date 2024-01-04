/*Contact for products

List every product_name and the company_name and contact_name of the suppliers belonging to them distinctively, and sort them alphabetically by product name.

The result of the query shows the following lines:

product_name	company_name	contact_name
Alice Mutton	Pavlova, Ltd.	Ian Devling
Aniseed Syrup	Exotic Liquids	Charlotte Cooper
Boston Crab Meat	New England Seafood C...	Robb Merchant
Camembert Pierrot	Gai pâturage	Eliane Noz
Carnarvon Tigers	Pavlova, Ltd.	Ian Devling
Chai	Specialty Biscuits, Ltd.	Peter Wilson
*/

SELECT DISTINCT p.product_name, s.company_name, s.contact_name
FROM products AS p
JOIN suppliers AS s ON p.supplier_id = s.supplier_id
ORDER BY p.product_name;

