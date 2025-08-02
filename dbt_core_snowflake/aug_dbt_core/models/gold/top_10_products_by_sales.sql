SELECT
    p.product_id,
    p.product_name,
    SUM(o.quantity) AS total_quantity_sold,
    SUM(o.total_amount) AS total_sales
FROM {{ ref('orders_products') }} p
JOIN {{ ref('cleaned_orders') }} o
  ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_sales DESC
LIMIT 10