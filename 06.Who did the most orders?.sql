/*Who did the most orders?

List the employees (title_of_courtesy, first_name, last_name concatenated) as employee, and count the number of orders they have handled (orders). Sort by the number of orders descending.

The result of the query contains the following lines.

| employee | orders |
|-----------------------|--------|
| Mrs. Margaret Peacock | 156 |
| Ms. Janet Leverling | 127 |
| Ms. Nancy Davolio | 123 |
| Ms. Laura Callahan | 104 |
| Dr. Andrew Fuller | 96 |
| Mr. Robert King | 72 |
| Mr. Michael Suyama | 67 |
| Ms. Anne Dodsworth | 43 |
| Mr. Steven Buchanan | 42 |
*/

SELECT CONCAT(e.title_of_courtesy, ' ', e.first_name, ' ', e.last_name) AS employee,
       COUNT(o.order_id) AS orders
FROM employees AS e
LEFT JOIN orders AS o ON e.employee_id = o.employee_id
GROUP BY e.title_of_courtesy, e.first_name, e.last_name
ORDER BY orders DESC;
