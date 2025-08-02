SELECT
    o.order_id,
    o.order_date,
    o.total_amount,
    o.quantity,
    c.customer_id,
    c.customer_name,
    c.email,
    c.signup_date
FROM SILVER.DBO_dbo.cleaned_orders o
JOIN BRONZE.DBO_stg.stg_customers c
  ON o.customer_id = c.customer_id