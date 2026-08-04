-- Write your PostgreSQL query statement below
SELECT 
ROUND(AVG(
    (order_date = customer_pref_delivery_date)::INT
) * 100, 2 )
 as immediate_percentage 
FROM Delivery
WHERE (customer_id, order_date) IN
 (SELECT customer_id, MIN(order_date) FROM DELIVERY
GROUP BY customer_id);