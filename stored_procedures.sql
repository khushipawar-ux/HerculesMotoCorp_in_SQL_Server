-- Stored Procedure to Display Classic Cars
CREATE PROCEDURE ShowClassicCars
AS
BEGIN
    SELECT productName FROM products WHERE productLine = 'Classic Cars';
END;
