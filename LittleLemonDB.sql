DELIMITER //
CREATE PROCEDURE CancelBooking(IN booking_id INT)
BEGIN
DECLARE check_booking INT;
SELECT COUNT(*) INTO check_booking FROM Bookings WHERE BookingID = booking_id;
IF check_booking > 0 THEN
DELETE FROM Bookings WHERE BookingID = booking_id;
SELECT 'Booking is canceled' AS Status, booking_id AS BookingID;
ELSE
SELECT 'Booking not found' AS Status, booking_id AS BookingID;
END IF;
END //
DELIMITER ;

CALL CancelBooking(14);
