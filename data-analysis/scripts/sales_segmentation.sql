-- Sales segmentation 
SELECT units,
	CASE 
		WHEN units <=5 THEN 'low_sales'
		WHEN units <= 10 THEN 'regular_sales'
		ELSE 'high_sales'
    END AS sales_category
FROM candy_db.clean_sales;