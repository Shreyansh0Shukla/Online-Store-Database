//Trigger to Auto-Decrease Product Stock
DELIMITER //
CREATE TRIGGER reduce_stock_after_order
AFTER INSERT ON Order_Details
FOR EACH ROW
BEGIN
    UPDATE Products
    SET stock_quantity = stock_quantity - NEW.quantity
    WHERE product_id = NEW.product_id;
END;
//
DELIMITER ;

// Function to Calculate Tax (e.g., 10%)
DELIMITER //
CREATE FUNCTION calc_tax(subtotal DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN subtotal * 0.10;
END;
//
DELIMITER ;

// Function to Estimate Shipping Cost (flat rate + per item)
DELIMITER //
CREATE FUNCTION calc_shipping(num_items INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN 5.00 + (num_items * 2.00);
END;
//
DELIMITER ;
