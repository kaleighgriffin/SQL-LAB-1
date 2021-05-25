-- #1 Select all the records from the "Customers" table.
SELECT * FROM customers;

-- #2 Get distinct countries from the Customers table.
SELECT country FROM customers;

-- #3 Get all the records from the table Customers where the Customer’s ID starts with “BL”.
SELECT * FROM  customers WHERE customer_id LIKE 'BL%';

-- #4 Get the first 100 records of the orders table.
SELECT * FROM orders LIMIT 100;

-- #5 Get all customers that live in the postal codes 1010, 3012, 12209, and 05023.
SELECT * FROM customers WHERE postal_code IN ('1010', '3012', '12209', '05023');

-- #6 Get all orders where the ShipRegion is not equal to NULL.
SELECT * FROM orders WHERE ship_region IS NOT NULL;

-- #7 Get all customers ordered by the country, then by the city.
SELECT * FROM customers ORDER BY country, city;

-- #8 Add a new customer to the customers table. You can use whatever values.
INSERT INTO customers (customer_id, company_name, contact_name, contact_title, address, city, region, postal_code, country, phone, fax) VALUES ('ABCDE', 'Kaleighs Kitchen', 'Kaleigh Grifin', 'Owner', '1234 Noneya Lane', 'Grand Rapids', 'MI', '49503', 'USA', '555-555-1234', '555-555-2345')

-- #9 Update all ShipRegion to the value ‘EuroZone’ in the Orders table, where the ShipCountry is equal to France.  
UPDATE orders SET ship_region='EuroZone' WHERE ship_country='France';

-- #10 Delete all orders from `order_details` that have a quantity of 1. 
DELETE FROM order_details WHERE quantity=1;

-- #11 Calculate the average, max, and min of the quantity at the `order details` table.
SELECT AVG(quantity) FROM order_details;
SELECT MAX(quantity) FROM order_details;
SELECT MIN(quantity) FROM order_details;

-- #12 Calculate the average, max, and min of the quantity at the `order details` table, grouped by the orderid.
SELECT AVG(quantity) FROM order_details GROUP BY order_id;
SELECT MAX(quantity) FROM order_details GROUP BY order_id;
SELECT MIN(quantity) FROM order_details GROUP BY order_id;

-- #13 Find the CustomerID that placed order 10290 (orders table)
SELECT customer_id FROM orders WHERE order_id=10290;

-- #14 Do an inner join, left join, right join on orders and customers tables.  (These are three separate queries, one for each type of join.)
SELECT * FROM orders INNER JOIN customers ON orders.customer_id = customers.customer_id;
SELECT * FROM orders LEFT JOIN customers ON orders.customer_id = customers.customer_id;
SELECT * FROM orders RIGHT JOIN customers ON orders.customer_id = customers.customer_id;

-- #15 Use a join to get the ship city and ship country of all the orders which are associated with an employee who is in London.
SELECT * FROM orders WHERE ship_country='London' JOIN

-- #16 Use a join to get the ship name of all orders that include a discontinued product. (See orders, order_details, and products. 1 means discontinued.)


-- #17 Get first names of all employees who report to no one.
SELECT * FROM employees as subordinate JOIN employees as manager on employee.id = employee.reports_to

-- #18 Get first names of all employees who report to Andrew.
