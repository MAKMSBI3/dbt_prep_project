SELECT
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_revenue,
    ROUND(AVG(o.total_amount), 2) AS avg_order_value
FROM SILVER.dbo.orders_customers c
JOIN SILVER.dbo.cleaned_orders o
  ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name