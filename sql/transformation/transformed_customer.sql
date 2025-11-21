SELECT
  id,
  first_name,
  last_name,
  email,
  address,
  SPLIT_PART(email, '@', 1) AS username
FROM customers;
