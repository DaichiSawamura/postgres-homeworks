CREATE TABLE employees
(
	employee_id int PRIMARY KEY,
    first_name text,
	last_name text,
	title text,
    birth_date text,
    notes text
);
SELECT * FROM employees;

CREATE TABLE customers
(
    customer_id text PRIMARY KEY ,
	company_name text,
	contact_name text
);
SELECT * FROM customers;

CREATE TABLE orders
(
    order_id text,
	customer_id text REFERENCES customers(customer_id) NOT NULL,
	employee_id int REFERENCES employees(employee_id) NOT NULL,
	order_date text,
	ship_city text
);
SELECT * FROM orders