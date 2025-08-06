-- Find highest product's sales on every city
SELECT city, product_name, total_sales
FROM (
    SELECT 
        city,
        product_name,
        SUM(sales) AS total_sales,
        RANK() OVER (PARTITION BY city ORDER BY SUM(sales) DESC) AS rank_sales
    FROM candy_db.clean_sales
    GROUP BY city, product_name
    ORDER BY total_sales DESC
) AS rs_product_city
WHERE rank_sales = 1;