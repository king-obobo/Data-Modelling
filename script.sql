-- 1. Customers Table
CREATE TABLE customers (
	customer_id VARCHAR(50) PRIMARY KEY,
	customer_name VARCHAR(150) NOT NULL,
	segnent VARCHAR(50),
	city VARCHAR(100),
	state VARCHAR(100),
	country VARCHAR(100),
	postal_code VARCHAR(20),
	market VARCHAR(50),
	region VARCHAR(50)
);

-- Products Table
CREATE TABLE products (
	product_id VARCHAR(50) PRIMARY KEY,
	category VARCHAR(50) ,
	sub_category VARCHAR(50) ,
	product_name VARCHAR(300) NOT NULL
);

-- Orders Table
CREATE TABLE orders (
	order_id VARCHAR(50) PRIMARY KEY,
	order_date DATE NOT NULL,
	ship_date DATE,
	ship_mode VARCHAR(50),
	customer_id VARCHAR(50),
	shipping_cost NUMERIC(10, 2),
	order_priority VARCHAR(20),
	CONSTRAINT fk_orders_customers
		FOREIGN KEY (customer_id)
		REFERENCES customers(customer_id)
		ON DELETE SET NULL
);

-- Order Details Table
CREATE TABLE order_details (
	row_id INT PRIMARY KEY,
	sales NUMERIC(10, 2) NOT NULL,
	quantity INT NOT NULL,
	discount NUMERIC(5, 2) DEFAULT 0.00,
	profit NUMERIC(10, 2),
	product_id VARCHAR(50) NOT NULL,
	order_id VARCHAR(50) NOT NULL,
	CONSTRAINT fk_orderdetails_products
		FOREIGN KEY (product_id)
		REFERENCES products(product_id)
		ON DELETE CASCADE,
	CONSTRAINT fk_orderdetails_orders
		FOREIGN KEY (order_id)
		REFERENCES orders(order_id)
		ON DELETE CASCADE
);