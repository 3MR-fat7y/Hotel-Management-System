-- Retrieves guest comments and ratings for a specified hotel.
CREATE PROCEDURE GetGuestCommentsByHotel @HotelName VARCHAR(255)
    AS BEGIN SELECT Hotel.Name as HotelName, Guest.FirstName, Guest.LastName, Feedback.Rate, Feedback.Comments
        FROM Hotel
        JOIN Guest ON Guest.HotelID = Hotel.HotelID
        JOIN Feedback ON Guest.FeedbackID = Feedback.FeedbackID
            WHERE Hotel.Name = @HotelName;
    END;


EXEC GetGuestCommentsByHotel @HotelName = 'Nile Plaza Hotel';
EXEC GetGuestCommentsByHotel @HotelName = 'Pyramids View Resort';
EXEC GetGuestCommentsByHotel @HotelName = 'Red Sea Oasis Hotel';
EXEC GetGuestCommentsByHotel @HotelName = 'Luxor Palace Hotel';
EXEC GetGuestCommentsByHotel @HotelName = 'Alexandria Beach Resort';

------------------------------------------------------------------------------------------------

--List of Services and their Cost
SELECT  h.Name as HotelName,s.ServiceName, s.ServiceType, s.Description, s.Cost
FROM Service s
JOIN Hotel h ON s.HotelID = h.HotelID
WHERE h.Name = 'Nile Plaza Hotel';

------------------------------------------------------------------------------------------------

-- List of Available Rooms
SELECT RoomNumber, RoomType, RoomRate, BedType, RoomCategory, RoomView, Branch, Description
FROM Room
WHERE Availability = 1;

------------------------------------------------------------------------------------------------

-- Guest Staying duration, rate, Billing Report
SELECT
    Guest.FirstName,
    Guest.LastName,
    Reservation.NumberOfGuests,
    Reservation.RoomNumber,
    Room.RoomType,
    Room.RoomRate,
    DATEDIFF(DAY, Reservation.CheckInDate, Reservation.CheckOutDate) AS StayDuration,
    (DATEDIFF(DAY, Reservation.CheckInDate, Reservation.CheckOutDate) * Room.RoomRate) AS TotalRate
FROM Guest
JOIN Reservation ON Guest.GuestID = Reservation.GuestID
JOIN Room ON Reservation.RoomNumber = Room.RoomNumber;

------------------------------------------------------------------------------------------------

--Guests and Reservation Count
    SELECT
    g.FirstName,
    g.LastName,
    COUNT(r.ReservationID) AS ReservationCount
FROM
    Guest g
    LEFT JOIN Reservation r ON g.GuestID = r.GuestID
GROUP BY g.GuestID, g.FirstName, g.LastName;

------------------------------------------------------------------------------------------------

-- Services Usage and Cost by Hotel
SELECT s.ServiceName, s.Cost, h.Name AS HotelName,
    COUNT(*) AS ServiceUsage
FROM Service s LEFT JOIN Hotel h ON s.HotelID = h.HotelID
GROUP BY s.ServiceName, s.Cost, h.Name
ORDER BY s.Cost ASC;

------------------------------------------------------------------------------------------------

-- Average of guest Rating by Hotel 

SELECT
    h.Name AS HotelName,
    h.Rating,
    AVG(f.Rate) AS AverageRatingbyguest
FROM
    Hotel h
    JOIN Guest g ON h.HotelID = g.HotelID
    JOIN Feedback f ON g.FeedbackID = f.FeedbackID
GROUP BY
    h.HotelID, h.Name, h.Rating
ORDER BY
    AverageRatingbyguest DESC;

------------------------------------------------------------------------------------------------

-- Average Room Rate for Each Room Type

SELECT RoomType, AVG(RoomRate) AS AverageRoomRate FROM Room GROUP BY RoomType;

SELECT [Nationality], COUNT(*) AS GuestCount FROM Guest GROUP BY [Nationality];





DELETE FROM [Guest-Reservation];
DELETE FROM [Reservation];
DELETE FROM [Guest];
DELETE FROM [Payment];
DELETE FROM [Room];
DELETE FROM [Receptionist];
DELETE FROM [Feedback];
DELETE FROM [Service];
DELETE FROM [Staff];
DELETE FROM [Hotel]
;


DROP TABLE [Guest-Reservation];
DROP TABLE [Reservation];
DROP TABLE [Guest];
DROP TABLE [Payment];
DROP TABLE [Room];
DROP TABLE [Receptionist];
DROP TABLE [Feedback];
DROP TABLE [Service];
DROP TABLE [Staff];
DROP TABLE [Hotel]
;


-- a report that arranges hotels based on their ratings in descending order
SELECT 
    Name as HotelName, Location, Rating FROM Hotel ORDER BY Rating DESC;
    WITH RoomRates AS (
    SELECT RoomType, AVG(RoomRate) AS AverageRoomRate
    FROM Room
    GROUP BY RoomType
),
GuestCounts AS (
    SELECT [Nationality], COUNT(*) AS GuestCount
    FROM Guest
    GROUP BY [Nationality]
);
-- Combine the results
SELECT
    R.RoomType,
    R.AverageRoomRate,
    G.[Nationality],
    G.GuestCount
FROM
    RoomRates R
JOIN
    GuestCounts G ON R.RoomType = G.[Nationality];


SELECT
    g.FirstName,
    g.LastName,
    rs.CheckInDate,
    rs.CheckOutDate
FROM
    Guest g
JOIN
    Guest-Reservation gr ON g.GuestID = gr.GuestID
JOIN
    Reservation rs ON gr.ReservationID = rs.ReservationID;



    SELECT
    g.FirstName,
    g.LastName,
    COUNT(r.ReservationID) AS ReservationCount
FROM
    Guest g
    LEFT JOIN Reservation r ON g.GuestID = r.GuestID
GROUP BY
    g.GuestID, g.FirstName, g.LastName;



-- Guests, Hotel Name, Reservation Count, and Services
SELECT
    g.FirstName,
    g.LastName,
    h.Name AS HotelName,
    COUNT(r.ReservationID) AS ReservationCount,
    GROUP_CONCAT(DISTINCT s.ServiceName ORDER BY s.ServiceName ASC) AS ServicesTaken
FROM
    Guest g
    LEFT JOIN Reservation r ON g.GuestID = r.GuestID
    LEFT JOIN Hotel h ON g.HotelID = h.HotelID
    LEFT JOIN Service s ON r.HotelID = s.HotelID
GROUP BY
    g.GuestID, g.FirstName, g.LastName, h.Name;


-- Guests, Hotel Name, Reservation Count, and Services
-- Guests, Hotel Name, Reservation Count, and Services
SELECT
    g.FirstName,
    g.LastName,
    h.Name AS HotelName,
    COUNT(r.ReservationID) AS ReservationCount,
    STRING_AGG(s.ServiceName, ', ') AS ServicesTaken
FROM
    Guest g
    LEFT JOIN Reservation r ON g.GuestID = r.GuestID
    LEFT JOIN Hotel h ON g.HotelID = h.HotelID
    LEFT JOIN Service s ON r.HotelID = s.HotelID
GROUP BY g.FirstName, g.LastName, h.Name;



SELECT
    AVG(f.Rate) AS AverageRating,
    COUNT(f.FeedbackID) AS FeedbackCount
FROM
    Feedback f
    JOIN Guest g ON f.FeedbackID = g.FeedbackID;


SELECT r.ReservationID, g.FirstName, g.LastName, r.CheckInDate, r.CheckOutDate
FROM Reservation r
    JOIN Guest g ON r.GuestID = g.GuestID;
