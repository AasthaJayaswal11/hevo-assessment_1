
\echo 'START IMPORT'

\COPY customers(id,first_name,last_name,email,address) FROM '/tmp/customers.csv' WITH (FORMAT csv, HEADER true);
\COPY orders(id,customer_id,status) FROM '/tmp/orders.csv' WITH (FORMAT csv, HEADER true);
\COPY feedback(id,order_id,feedback_comment,rating) FROM '/tmp/feedback.csv' WITH (FORMAT csv, HEADER true);

\echo 'IMPORT DONE'

-- verification queries
SELECT 'customers_count' AS check, COUNT(*) FROM customers;
SELECT 'orders_count'    AS check, COUNT(*) FROM orders;
SELECT 'feedback_count'  AS check, COUNT(*) FROM feedback;

SELECT id, first_name, last_name, email FROM customers ORDER BY id LIMIT 5;
SELECT id, customer_id, status FROM orders ORDER BY id LIMIT 5;
SELECT id, order_id, rating FROM feedback ORDER BY id LIMIT 5;
