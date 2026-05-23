-- Create
INSERT INTO users (name, age, email) VALUES ('John', 25, 'john@gmail.com');

INSERT INTO users (name, age, email) 
VALUES 
  ('John', 25, 'john@gmail.com'),
  ('Alice', 30, 'alice@gmail.com'),
  ('Bob', 22, 'bob@gmail.com');

-- Read
SELECT * FROM users;
SELECT name, age FROM users WHERE age > 20;

-- Update
UPDATE users SET age = 26 WHERE name = 'John';

-- Delete
DELETE FROM users WHERE name = 'John';
Delete from purchases where id =1;
