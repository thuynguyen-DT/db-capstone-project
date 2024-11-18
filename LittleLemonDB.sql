DELIMITER //
CREATE PROCEDURE Addbooking(booking_id INT, booking_date DATE, table_booking INT, customer_id INT)
BEGIN
INSERT INTO Bookings(BookingID, BookingDate, TableNumber, CustomerID) VALUES (booking_id, booking_date, table_booking, customer_id);
SELECT 'Booking added successfully' AS Status, booking_id AS BookingID;
END //
DELIMITER ;

CALL Addbooking(16,'2022-10-17', 3, 1);