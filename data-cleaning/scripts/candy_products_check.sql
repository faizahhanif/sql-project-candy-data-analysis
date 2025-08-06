-- Checking the duplicates data
SELECT product_name, product_id, COUNT(product_id) AS total_product
FROM candy_db.clean_products
GROUP BY product_id
HAVING total_product > 1;

-- Checking the null entry
SELECT *
FROM candy_db.clean_products
WHERE division IS NULL
   OR product_name IS NULL
   OR factory IS NULL
   OR product_id IS NULL
   OR unit_price IS NULL
   OR unit_cost IS NULL

