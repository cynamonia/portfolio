SELECT *
FROM products 
WHERE quantity_per_unit LIKE '%bottle%' 
AND unit_price >=100 AND units_in_stock>0 OR units_in_stock>100;

SELECT *
FROM suppliers
WHERE contact_title ILIKE '%manager%'
AND contact_name ILIKE '%Peter%'
AND city ILIKE '_____';

SELECT *
FROM products 
WHERE units_in_stock = 0 AND  reorder_level = 0;

SELECT *
FROM products
WHERE quantity_per_unit LIKE '%bag%'
AND quantity_per_unit LIKE '%bottle%'
AND product_name ILIKE '%hot%';

SELECT *
FROM products
WHERE category_id = 2
AND units_in_stock >= 100
AND discontinued = 1
AND reorder_level < 100;

SELECT *
FROM customers
WHERE country = 'Germany'
AND contact_title = 'Owner';

SELECT product_name AS product
 	, unit_price AS price
	, units_in_stock AS amount
FROM products;

SELECT *
FROM products
WHERE unit_price >= 100 AND units_in_stock >=10;

SELECT DISTINCT country, city
FROM customers;

SELECT DISTINCT contact_title
FROM customers;

SELECT DISTINCT ship_postal_code
FROM orders;

SELECT DISTINCT ship_postal_code, ship_country
FROM orders;

SELECT product_name, unit_price, quantity_per_unit
FROM products
LIMIT 10 OFFSET 0;

SELECT product_name, unit_price, quantity_per_unit
FROM products
LIMIT 10 OFFSET 10;

SELECT product_name, unit_price, quantity_per_unit
FROM products
LIMIT 10 OFFSET 20;

SELECT product_name, unit_price, quantity_per_unit
FROM products
ORDER BY product_name
LIMIT 10 OFFSET 0;

SELECT *
FROM customers
ORDER BY company_name;

SELECT *
FROM products
ORDER BY units_in_stock DESC, reorder_level DESC;

SELECT *
FROM orders
ORDER BY order_date