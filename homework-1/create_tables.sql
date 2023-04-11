-- SQL-команды для создания таблиц
CREATE DATABASE north;
CREATE TABLE employees
(
    first_name text,
	last_name text,
	title text,
    birth_date text,
    notes text
);
SELECT * FROM employees;

CREATE TABLE customers
(
    customer_id text,
	company_name text,
	contact_name text
);
SELECT * FROM customers;

CREATE TABLE orders
(
    order_id text,
	customer_id text,
	employee_id text,
	order_date text,
	ship_city text
);
SELECT * FROM orders
