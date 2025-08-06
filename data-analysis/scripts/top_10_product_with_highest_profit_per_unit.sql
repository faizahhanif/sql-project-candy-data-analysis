-- Product with highest profit per unit 
SELECT product_name, unit_price - unit_cost AS unit_profit
FROM candy_db.clean_products
ORDER BY unit_profit DESC
LIMIT 10;