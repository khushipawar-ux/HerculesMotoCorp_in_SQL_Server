The project requires you to design and implement a database for Hercules MotoCorp in SQL Server. 
Here's a step-by-step solution with SQL queries to help you complete it:

### Step 1: Database and Table Design
1. Create the Database:
   CREATE DATABASE MotorsCertification;
   USE MotorsCertification;

2. Design Tables Based on the Requirements:

    Order Details Table:
     CREATE TABLE orderdetails (
         orderNumber INT PRIMARY KEY,
         productCode VARCHAR(50),
         quantityOrdered INT,
         priceEach FLOAT,
         orderLineNumber SMALLINT,
         FOREIGN KEY (orderNumber) REFERENCES orders(orderNumber),
         FOREIGN KEY (productCode) REFERENCES products(productCode)
     );

    Customers Table:
     CREATE TABLE customers (
         customerNumber INT PRIMARY KEY,
         customerName VARCHAR(50),
         contactLastName VARCHAR(50),
         contactFirstName VARCHAR(50),
         phone VARCHAR(50),
         addressLine1 VARCHAR(50),
         addressLine2 VARCHAR(50),
         city VARCHAR(50),
         state VARCHAR(50),
         postalCode VARCHAR(15),
         country VARCHAR(50),
         salesRepEmployeeNumber INT,
         creditLimit FLOAT,
         FOREIGN KEY (salesRepEmployeeNumber) REFERENCES employees(employeeNumber)
     );

    Repeat similar statements for each table, ensuring to define primary keys, foreign keys, and indexes as specified.

### Step 2: Insert Data into Tables
Load data from provided CSV files in the order mentioned (orderdetails, employees, payments, products, customers, offices, orders). Use `BULK INSERT` or manual `INSERT INTO` statements.

### Step 3: ER Diagram
Create an ER diagram in SQL Server Management Studio (SSMS) and take a screenshot.

### Step 4: Delete Unnecessary Columns from `productlines`
   ALTER TABLE productlines
   DROP COLUMN image, htmlDescription;

### Step 5: Verify Insertions and Updates
   SELECT * FROM orderdetails;
   SELECT * FROM customers;

### Step 6: Find Highest and Lowest Amount
   SELECT MAX(amount) AS HighestAmount, MIN(amount) AS LowestAmount FROM payments;

### Step 7: Unique Count of Customer Names
   SELECT COUNT(DISTINCT customerName) AS UniqueCustomerCount FROM customers;

### Step 8: Create and Manage a View
   CREATE VIEW cust_payment AS
   SELECT customerName, amount, contactLastName, contactFirstName
   FROM customers
   JOIN payments ON customers.customerNumber = payments.customerNumber
   WHERE amount > 0;
   
    View data
   SELECT * FROM cust_payment;

    Drop the view
   DROP VIEW cust_payment;

### Step 9: Stored Procedure for Product Line Display
   CREATE PROCEDURE ShowClassicCars
   AS
   BEGIN
       SELECT productLine FROM products WHERE productLine = 'Classic Cars';
   END;

### Step 10: Function to Get Customers with Low Credit Limits
   CREATE FUNCTION GetLowCreditLimit()
   RETURNS TABLE
   AS
   RETURN (SELECT * FROM customers WHERE creditLimit < 96800);

### Step 11: Trigger for Employee Insertion
   CREATE TRIGGER EmployeeInsertTrigger
   ON employees
   AFTER INSERT
   AS
   BEGIN
       SELECT employeeNumber, lastName, firstName, officeCode FROM inserted;
   END;

### Step 12: Trigger for High Payment Amounts
   CREATE TRIGGER HighPaymentTrigger
   ON payments
   AFTER INSERT
   AS
   BEGIN
       IF (SELECT amount FROM inserted) > 10000
           SELECT customerNumber FROM inserted;
   END;

### Step 13: User Roles and Permissions
    Create Roles:

     CREATE ROLE Admin;
     CREATE ROLE HR;
     CREATE ROLE Employee;

    Grant Permissions:
 
     GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES TO Admin;
     GRANT SELECT, INSERT, UPDATE, DELETE ON employees, offices TO HR;
     GRANT SELECT ON ALL TABLES TO Employee;

### Step 14: Schedule Database Backup
Use SQL Server Agent to schedule regular backups.

### Step 15: Activity Monitor Observations
Open Activity Monitor and document processes, resource waits, and queries.

### Step 16: Migrate to Azure SQL
Follow SQL Server migration steps to move the database to Azure SQL.

