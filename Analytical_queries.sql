//Total Sales by Category (Including Quantity Sold)
SELECT 
    p.category,
    SUM(od.quantity * od.unit_price) AS total_sales,
    SUM(od.quantity) AS items_sold
FROM Order_Details od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.category
ORDER BY total_sales DESC;

//Top 5 Customers by Total Spend
SELECT 
    c.name,
    c.email,
    SUM(o.total_amount) AS total_spent
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 5;

//Products Currently Out of Stock
SELECT product_name, category
FROM Products
WHERE stock_quantity = 0;

//Daily Revenue Breakdown (with Tax + Shipping)
SELECT 
    order_date,
    SUM(total_amount) AS total_revenue,
    SUM(tax) AS total_tax,
    SUM(shipping_cost) AS total_shipping
FROM Orders
GROUP BY order_date
ORDER BY order_date DESC;

//Orders with Payment Mismatches
SELECT 
    o.order_id,
    o.total_amount,
    p.amount_paid
FROM Orders o
JOIN Payments p ON o.order_id = p.order_id
WHERE o.total_amount != p.amount_paid;

//Most Popular Products (by Order Count)
SELECT 
    p.product_name,
    COUNT(od.order_id) AS times_ordered,
    SUM(od.quantity) AS total_units_sold
FROM Order_Details od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.product_id
ORDER BY total_units_sold DESC
LIMIT 10;
