Primary Key, Foreign Key, NOT NULL, UNIQUE, CHECK
ACID properties: Atomicity, Consistency, Isolation, Durability

Constraints Example Queries
Primary Key
CREATE TABLE users (
  id INT PRIMARY KEY,
  name VARCHAR(50)
);
Foreign Key
CREATE TABLE orders (
  id INT PRIMARY KEY,
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES users(id)
);
NOT NULL
CREATE TABLE users (
  name VARCHAR(50) NOT NULL
);
UNIQUE
CREATE TABLE users (
  email VARCHAR(100) UNIQUE
);
CHECK
CREATE TABLE users (
  age INT CHECK (age >= 18)
);
Insert Queries
INSERT INTO users (id, name, email, age)
VALUES (1, 'John', 'john@example.com', 25);
INSERT INTO orders (id, user_id)
VALUES (101, 1);
ACID Transaction Example
BEGIN;

UPDATE accounts
SET balance = balance - 1000
WHERE id = 1;

UPDATE accounts
SET balance = balance + 1000
WHERE id = 2;

COMMIT;
Rollback Example
BEGIN;

UPDATE accounts
SET balance = balance - 1000
WHERE id = 1;

-- error happens here

ROLLBACK;
Extra Useful Queries
Update
UPDATE users
SET email = 'newemail@example.com'
WHERE id = 1;
Delete
DELETE FROM users
WHERE id = 1;
Select
SELECT * FROM users;
Join (Foreign Key usage)
SELECT users.name, orders.id
FROM users
JOIN orders ON users.id = orders.user_id;