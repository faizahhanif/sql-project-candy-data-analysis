-- Checking the duplicates data
SELECT order_id, customer_id, product_id, COUNT(order_id) AS total_order
FROM candy_db.clean_sales
GROUP BY order_id, customer_id, product_id
HAVING total_order > 1;

-- Checking the null entry
SELECT *
FROM candy_db.clean_sales
WHERE order_id IS NULL
   OR order_date IS NULL
   OR ship_date IS NULL
   OR ship_mode IS NULL
   OR customer_id IS NULL
   OR country_or_region IS NULL
   OR city IS NULL
   OR state_or_province IS NULL
   OR postal_code IS NULL
   OR division IS NULL
   OR product_id IS NULL
   OR product_name IS NULL
   OR sales IS NULL
   OR units IS NULL
   OR gross_profit IS NULL
   OR cost IS NULL;

-- Check whether the ship date and order date valid or not
SELECT order_date, ship_date 
FROM candy_db.clean_sales
WHERE order_date > ship_date;