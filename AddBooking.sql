DELIMITER $$
create procedure AddBooking(
	in booking_id int,  
    in customer_id int,     
    in table_num int,     
    in booking_date Date 
) 
BEGIN  
	INSERT INTO Bookings (
		BookingID, 
		CustomerID, 
        TableNum, 
        BookingDate
        )
	VALUES (booking_id, customer_id, table_num, booking_date); 
    END$$
DELIMITER ;