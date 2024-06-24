DELIMITER //

CREATE PROCEDURE CancelBooking(IN bookings_id INT)
BEGIN
    DELETE FROM bookings WHERE BookingID = bookings_id;
END //

DELIMITER ;
