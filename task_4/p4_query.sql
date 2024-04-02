WITH CutdownTable AS (
	SELECT * 
    FROM order_details 
    WHERE quantity > 10
)
SELECT 
	order_id, AVG(quantity) AS avg_quantity	
FROM 
	CutdownTable 
GROUP BY 
	order_id;
