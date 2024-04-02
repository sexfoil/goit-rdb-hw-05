SELECT 
	*	
FROM 
	order_details
WHERE 
	order_id IN (SELECT id FROM orders o WHERE o.shipper_id = 3);