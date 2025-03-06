-- Display all customers
SELECT * FROM customers;

-- Find Highest and Lowest Payment Amount
SELECT MAX(amount) AS HighestAmount, MIN(amount) AS LowestAmount FROM payments;

-- Unique Customer Count
SELECT COUNT(DISTINCT customerName) AS UniqueCustomerCount FROM customers;

-- View Customers who made Payments
CREATE VIEW cust_payment AS
SELECT customerName, amount, contactLastName, contactFirstName
FROM customers
JOIN payments ON customers.customerNumber = payments.customerNumber;

SELECT * FROM cust_payment;
DROP VIEW cust_payment;
