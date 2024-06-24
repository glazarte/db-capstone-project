DELIMITER //

CREATE PROCEDURE ManageBooking(
    IN action VARCHAR(10),
    IN booking_id INT,
    IN customer_id INT,
    IN booking_date DATE,
    IN table_number INT,
    IN staff VARCHAR(255)
)
BEGIN
    IF action = 'INSERT' THEN
        INSERT INTO bookings (customer_id, date, table_number, staffinformation_staffinformation_id)
        VALUES (customer_id, booking_date, table_number, staff);
    ELSEIF action = 'UPDATE' THEN
        UPDATE Bookings
        SET CustomerID = customer_id, BookingDate = booking_date, NumberOfGuests = number_of_guests, SpecialRequests = special_requests
        WHERE bookings_id = booking_id;
    ELSEIF action = 'DELETE' THEN
        DELETE FROM bookings WHERE bookings_id = booking_id;
    END IF;
END //

DELIMITER ;
