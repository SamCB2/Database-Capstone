DELIMITER $$
create procedure DeleteBooking( in booking_id int )
BEGIN  
DELETE FROM Bookings WHERE BookingID = booking_id; 
END$$
DELIMITER ;