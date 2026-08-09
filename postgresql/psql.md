# psql

## What is psql?

- `psql` is the command-line tool for PostgreSQL.
- It allows you to connect to a PostgreSQL database.
- You can run SQL queries and manage databases from the terminal.

## Connect to PostgreSQL

```bash
psql -U postgres

//Connect to a specific database

psql -U postgres -d mydatabase

//Connect using host and port

psql -h localhost -p 5432 -U postgres -d mydatabase

\l	List databases
\c database_name	Connect to a database
\dt	List tables
\d table_name	Show table structure
\dn	List schemas
\du	List users and roles
\q	Exit psql
\?	Show psql commands
\h	Show SQL help

## After connecting, you'll see something like:

mydatabase=#

Now you can type:

SELECT * FROM users;