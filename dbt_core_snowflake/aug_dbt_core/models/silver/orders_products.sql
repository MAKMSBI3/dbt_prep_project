SELECT
    o.order_id,
    o.order_date,
    o.total_amount,
    o.quantity,
    p.product_id,
    p.product_name,
    p.category,
    p.price
FROM {{ ref('cleaned_orders') }} o
JOIN {{ ref('stg_products') }} p
  ON o.product_id = p.product_id