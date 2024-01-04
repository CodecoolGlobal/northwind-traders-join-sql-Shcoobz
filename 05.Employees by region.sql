/*Employees by region

Let's take a look on how many employees the company has by region! 
(Hint: you'll need the employees, employee_territories, territories and region fields to answer correctly.)

The result of the query starts with the following lines.

| count | region_description |
|-------|--------------------|
| 19 | Eastern |
| 15 | Western |
| 4 | Southern |
| 11 | Northern |
*/

-- Select count and region_description of employees in each region
SELECT COUNT(*) AS count, r.region_description
FROM employees e
JOIN employee_territories et ON e.employee_id = et.employee_id
JOIN territories t ON et.territory_id = t.territory_id
JOIN region r ON t.region_id = r.region_id
GROUP BY r.region_description
ORDER BY
  CASE r.region_description
    WHEN 'Eastern' THEN 1
    WHEN 'Western' THEN 2
    WHEN 'Southern' THEN 3
    WHEN 'Northern' THEN 4
    ELSE 5
  END;