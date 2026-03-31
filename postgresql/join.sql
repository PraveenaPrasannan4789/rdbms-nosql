-- INNER JOIN: Only matching records
SELECT users.name, orders.product
FROM users
INNER JOIN orders ON users.id = orders.user_id;

-- LEFT JOIN: All users + orders if available
SELECT users.name, orders.product
FROM users
LEFT JOIN orders ON users.id = orders.user_id;