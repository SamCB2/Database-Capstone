
DELIMITER $$
CREATE PROCEDURE GetMAxQuantity () 
SELECT MAX(Quantity) AS "Max Quantity in Order" FROM Orders
DELIMITER ;