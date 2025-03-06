-- Insert into ProductLines Table
INSERT INTO productlines (productLine, textDescription)
VALUES 
('Classic Cars', 'High quality classic car models'),
('Motorcycles', 'State of the art motorcycle replicas'),
('Planes', 'Unique diecast airplane replicas'),
('Ships', 'Handcrafted model ships'),
('Trains', 'Collectible model trains'),
('Trucks and Buses', 'Realistic replicas of buses and trucks'),
('Vintage Cars', 'Vintage car models from early 1900s');

-- Insert into Customers Table
INSERT INTO customers (customerNumber, customerName, contactLastName, contactFirstName, phone, addressLine1, city, country)
VALUES 
(101, 'Atelier graphique', 'Schmitt', 'Carine', '40.32.2555', '54, rue Royale', 'Nantes', 'France'),
(102, 'Signal Gift Stores', 'King', 'Jean', '7025551838', '8489 Strong St.', 'Las Vegas', 'USA'),
(103, 'Australian Collectors, Co.', 'Ferguson', 'Peter', '03-9520-4555', '636 St Kilda Road', 'Melbourne', 'Australia');

-- Insert into Payments Table
INSERT INTO payments (customerNumber, checkNumber, paymentDate, amount)
VALUES 
(101, 'HQ336336', '2004-10-19', 6066.78),
(102, 'JM555205', '2003-06-05', 14571.44),
(103, 'OM314933', '2004-12-18', 1676.14);
