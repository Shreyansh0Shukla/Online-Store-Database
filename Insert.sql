//Insert_Customers

  INSERT INTO Customers (name, email, address)
VALUES 
('Alice Johnson', 'alice@example.com', '123 Apple St, NY'),
('Bob Smith', 'bob@example.com', '456 Orange Ave, CA'),
('Charlie Lee', 'charlie@example.com', '789 Banana Blvd, TX'),
('Diana King', 'diana@example.com', '321 Grape Rd, IL'),
('Edward Brown', 'edward@example.com', '654 Mango Dr, FL'),
('Fiona Green', 'fiona@example.com', '111 Peach Way, WA'),
('George Young', 'george@example.com', '222 Pear Ln, AZ'),
('Hannah Black', 'hannah@example.com', '333 Plum Ct, NV'),
('Ian White', 'ian@example.com', '444 Lemon St, GA'),
('Julia Grey', 'julia@example.com', '555 Kiwi Cir, CO');

//Insert_Products
INSERT INTO Products (product_name, category, price, stock_quantity)
VALUES
('Wireless Mouse', 'Electronics', 25.99, 50),
('Keyboard', 'Electronics', 45.00, 30),
('USB-C Charger', 'Accessories', 15.50, 60),
('Notebook', 'Stationery', 5.99, 100),
('Office Chair', 'Furniture', 120.00, 15),
('LED Monitor', 'Electronics', 180.75, 20),
('Ballpoint Pens', 'Stationery', 2.99, 200),
('Standing Desk', 'Furniture', 350.00, 10);

//Insert_Orders
INSERT INTO Orders (customer_id, tax, shipping_cost, total_amount)
VALUES
(1, 5.50, 10.00, 95.50),
(3, 10.00, 15.00, 200.00),
(5, 2.50, 5.00, 50.00),
(2, 8.25, 12.00, 180.00),
(4, 15.00, 20.00, 320.00);

//Insert_Order_Detail
INSERT INTO Order_Details (order_id, product_id, quantity, unit_price)
VALUES
-- Order 1
(1, 1, 2, 25.99),
(1, 3, 1, 15.50),

-- Order 2
(2, 2, 1, 45.00),
(2, 6, 1, 180.75),

-- Order 3
(3, 4, 5, 5.99),
(3, 7, 10, 2.99),

-- Order 4
(4, 5, 1, 120.00),
(4, 1, 1, 25.99),

-- Order 5
(5, 8, 1, 350.00);

//Insert_Payment
INSERT INTO Payments (order_id, payment_method, amount_paid)
VALUES
(1, 'Credit Card', 95.50),
(2, 'PayPal', 200.00),
(3, 'Debit Card', 50.00),
(4, 'Credit Card', 180.00),
(5, 'Bank Transfer', 320.00);
