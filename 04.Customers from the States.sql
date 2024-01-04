/*Customers from the States

List every company_name and the state_name of customers from the US using the customers and us_states tables. 
The list should be ordered alphabetically by the company names.

The result of the query contains the following lines.

| company_name | state_name |
|-----------------------------------|------------|
| Great Lakes Food Market | Oregon |
| Hungry Coyote Import Store | Oregon |
| Lazy K Kountry Store | Washington |
| Let's Stop N Shop | California |
| Lonesome Pine Restaurant | Oregon |
| Old World Delicatessen | Alaska |
| Rattlesnake Canyon Grocery | New Mexico |
| Save-a-lot Markets | Idaho |
| Split Rail Beer & Ale | Wyoming |
| The Big Cheese | Oregon |
| The Cracker Box | Montana |
| Trail's Head Gourmet Provisioners | Washington |
| White Clover Markets | Washington |*/

-- Select company_name and state_name from customers and us_states tables
SELECT c.company_name, us.state_name
FROM customers c
JOIN us_states us ON c.region = us.state_abbr  -- Joining on state abbreviations
WHERE c.country = 'USA'
ORDER BY c.company_name;