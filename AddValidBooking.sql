DELIMITER $$
CREATE PROCEDURE AddValidBooking(     
	IN booking_date DATE,     
    IN table_number INT 
) 
BEGIN     
	DECLARE table_count INT;
    SELECT COUNT(*) INTO table_count     
    FROM bookings    
    WHERE BookingDate = booking_date AND TableNum= table_number;
	IF table_count > 0 THEN         
		ROLLBACK;         
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Table is already booked on the given date'; 
	ELSE         
		INSERT INTO bookings (BookingDate, TableNum) VALUES (booking_date, table_number);         
        COMMIT;     
	END IF; 
END$$

DELIMITER ;
