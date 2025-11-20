-- ddl/create_tables.sql
-- Tables used for Assessment I (customers, orders, feedback)

CREATE TABLE IF NOT EXISTS customers (
  id INTEGER PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  email VARCHAR,
  address JSON
);

CREATE TABLE IF NOT EXISTS orders (
  id INTEGER PRIMARY KEY,
  customer_id INTEGER REFERENCES customers(id),
  status VARCHAR
);

CREATE TABLE IF NOT EXISTS feedback (
  id INTEGER PRIMARY KEY,
  order_id INTEGER UNIQUE REFERENCES orders(id),
  feedback_comment TEXT,
  rating INTEGER
);
