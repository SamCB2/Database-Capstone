DELIMITER $$
create procedure UpdateBooking(  
	in booking_id int,     
    in booking_date Date 
) 
BEGIN  
	Update bookings SET BookingDate = booking_date WHERE BookingID = booking_id; 
END$$

DELIMITER ;