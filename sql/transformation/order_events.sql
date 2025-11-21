SELECT
  id                   AS order_id,
  customer_id,
  status,
  LOWER(CONCAT('order_', status)) AS event_type,
  CURRENT_TIMESTAMP()   AS event_ts
FROM orders
WHERE status IS NOT NULL;
