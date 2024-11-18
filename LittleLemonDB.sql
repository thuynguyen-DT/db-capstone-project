DELIMITER //
CREATE PROCEDURE UpdateBooking(IN booking_date DATE, IN booking_id INT)
BEGIN
UPDATE Bookings
SET BookingDate = booking_date
WHERE BookingID = booking_id;
SELECT 'booking is updated successfully' AS Status, booking_id AS BookingID;
END //
DELIMITER ;

CALL UpdateBooking('2022-10-16',16);