CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INT CHECK (age > 0),
  email VARCHAR(100) UNIQUE
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  product VARCHAR(50),
  price DECIMAL(10,2)
);

CREATE TABLE purchases (
  purchase_id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  product VARCHAR(50),
  price DECIMAL(10,2)
);
