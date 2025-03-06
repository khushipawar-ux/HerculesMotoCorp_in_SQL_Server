-- Trigger to Show Employee Details on Insert
CREATE TRIGGER EmployeeInsertTrigger
ON employees
AFTER INSERT
AS
BEGIN
    SELECT employeeNumber, lastName, firstName, officeCode FROM inserted;
END;

-- Trigger to Display Customer if Payment > 10,000
CREATE TRIGGER PaymentTrigger
ON payments
AFTER INSERT
AS
BEGIN
    IF (SELECT amount FROM inserted) > 10000
        SELECT customerNumber FROM inserted;
END;
