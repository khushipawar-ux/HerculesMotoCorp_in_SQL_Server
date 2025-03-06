-- Create Database
CREATE DATABASE MotorsCertification;
USE MotorsCertification;

-- Create Offices Table
CREATE TABLE offices (
    officeCode VARCHAR(10) PRIMARY KEY,
    city VARCHAR(50),
    phone VARCHAR(50),
    addressLine1 VARCHAR(50),
    addressLine2 VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    postalCode VARCHAR(15),
    territory VARCHAR(50)
);

-- Create Employees Table
CREATE TABLE employees (
    employeeNumber INT PRIMARY KEY,
    lastName VARCHAR(50),
    firstName VARCHAR(50),
    extension VARCHAR(10),
    email VARCHAR(100),
    officeCode VARCHAR(10),
    reportsTo INT,
    jobTitle VARCHAR(50),
    FOREIGN KEY (officeCode) REFERENCES offices(officeCode),
    FOREIGN KEY (reportsTo) REFERENCES employees(employeeNumber)
);

-- Create Customers Table
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

-- Create Orders Table
CREATE TABLE orders (
    orderNumber INT PRIMARY KEY,
    orderDate DATE,
    requiredDate DATE,
    shippedDate DATE,
    status VARCHAR(15),
    comments TEXT,
    customerNumber INT,
    FOREIGN KEY (customerNumber) REFERENCES customers(customerNumber)
);

-- Create OrderDetails Table
CREATE TABLE orderdetails (
    orderNumber INT,
    productCode VARCHAR(50),
    quantityOrdered INT,
    priceEach FLOAT,
    orderLineNumber SMALLINT,
    PRIMARY KEY (orderNumber, productCode),
    FOREIGN KEY (orderNumber) REFERENCES orders(orderNumber),
    FOREIGN KEY (productCode) REFERENCES products(productCode)
);

-- Create Products Table
CREATE TABLE products (
    productCode VARCHAR(50) PRIMARY KEY,
    productName VARCHAR(100),
    productLine VARCHAR(50),
    productScale VARCHAR(10),
    productVendor VARCHAR(50),
    productDescription TEXT,
    quantityInStock SMALLINT,
    buyPrice FLOAT,
    MSRP FLOAT
);

-- Create Payments Table
CREATE TABLE payments (
    customerNumber INT,
    checkNumber VARCHAR(50),
    paymentDate DATE,
    amount FLOAT,
    PRIMARY KEY (customerNumber, checkNumber),
    FOREIGN KEY (customerNumber) REFERENCES customers(customerNumber)
);

-- Create ProductLines Table
CREATE TABLE productlines (
    productLine VARCHAR(50) PRIMARY KEY,
    textDescription VARCHAR(4000)
);
