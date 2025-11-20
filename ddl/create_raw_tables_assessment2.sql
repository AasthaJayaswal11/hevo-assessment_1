-- ddl/create_raw_tables_assessment2.sql
-- Raw tables skeleton for Assessment II (messy data to be cleaned)

CREATE TABLE IF NOT EXISTS customers_raw (
  customer_id INTEGER,
  email VARCHAR,
  phone VARCHAR,
  country_code VARCHAR,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

CREATE TABLE IF NOT EXISTS orders_raw (
  order_id INTEGER,
  customer_id INTEGER,
  product_id VARCHAR,
  amount NUMERIC,
  currency VARCHAR,
  created_at TIMESTAMP
);

CREATE TABLE IF NOT EXISTS products_raw (
  product_id VARCHAR,
  product_name VARCHAR,
  category VARCHAR,
  active_flag VARCHAR
);

CREATE TABLE IF NOT EXISTS country_dim (
  country_name VARCHAR,
  iso_code VARCHAR
);
