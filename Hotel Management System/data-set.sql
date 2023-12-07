

-- INSERT INTO Service (ServiceID, ServiceName, ServiceType, Description, Cost)
-- VALUES
--     (NEWID(), 'Room Cleaning', 'Cleaning', 'Cleaning service for rooms', 50.00),
--     (NEWID(), 'Airport Shuttle', 'Transportation', 'Shuttle service to/from the airport', 25.00),
--     (NEWID(), 'Room Service', 'Hospitality', 'In-room food and beverage service', 30.00),
--     (NEWID(), 'Wi-Fi', 'Technology', 'High-speed internet access', 10.00),
--     (NEWID(), 'Gym Access', 'Fitness', 'Access to the hotel gym', 15.00);




-- INSERT INTO Staff (StaffID, HotelID, StaffCategory, Name, Position, ContactInfo)
-- VALUES
--     (NEWID(), 101, 'Cleaning', 'Alice Johnson', 'Housekeeper', '555-1234'),
--     (NEWID(), 101, 'Front Desk', 'Bob Smith', 'Receptionist', '555-5678'),
--     (NEWID(), 102, 'Maintenance', 'Charlie Brown', 'Maintenance Technician', '555-9876'),
--     (NEWID(), 103, 'Management', 'David Williams', 'General Manager', '555-4321'),
--     (NEWID(), 104, 'Catering', 'Eva Davis', 'Chef', '555-8765');
    



-- INSERT INTO Room (RoomNumber, RoomType, RoomRate, BedType, RoomCategory, RoomView, Location, Availability, Description)
-- VALUES
--     (101, 'Standard', 150.00, 'Double', 'Economy', 'City View', 'Floor 1', 1, 'Cozy standard room with a double bed and a view of the city.'),
--     (202, 'Deluxe', 250.00, 'King', 'Luxury', 'Ocean View', 'Floor 2', 1, 'Spacious deluxe room with a king-size bed and a breathtaking ocean view.'),
--     (303, 'Suite', 400.00, 'Queen', 'Executive', 'Mountain View', 'Floor 3', 1, 'Executive suite with a queen-size bed and a stunning mountain view.'),
--     (404, 'Standard', 150.00, 'Double', 'Economy', 'Garden View', 'Floor 4', 1, 'Standard room with a double bed and a serene garden view.'),
--     (505, 'Deluxe', 250.00, 'King', 'Luxury', 'Pool View', 'Floor 5', 1, 'Luxurious deluxe room with a king-size bed and a refreshing pool view.');


-- INSERT INTO Receptionist (ReceptionistID, FirstName, LastName, DateOfBirth, Position, Salary, HireDate)
-- VALUES
--     (NEWID(), 'Emily', 'Jones', '1992-08-12', 'Receptionist', 5000, '2020-03-15'),
--     (NEWID(), 'Michael', 'Smith', '1985-05-20', 'Senior Receptionist', 6000, '2018-07-22'),
--     (NEWID(), 'Sophia', 'Davis', '1990-11-08', 'Front Desk Manager', 7500, '2016-09-10'),
--     (NEWID(), 'Daniel', 'Clark', '1988-04-30', 'Receptionist', 5500, '2019-02-18'),
--     (NEWID(), 'Olivia', 'Anderson', '1995-12-03', 'Junior Receptionist', 4800, '2021-05-09');


-- -- Sample data for Payment table
-- INSERT INTO Payment (PaymentID, ReservationID, PaymentDate, Amount, PaymentMethod)
-- VALUES
--     (NEWID(), 1, '2023-01-10', 200.00, 'Credit Card'),
--     (NEWID(), 2, '2023-02-15', 350.00, 'Cash'),
--     (NEWID(), 3, '2023-03-20', 500.00, 'Credit Card'),
--     (NEWID(), 4, '2023-04-25', 150.00, 'Cash'),
--     (NEWID(), 5, '2023-05-30', 300.00, 'Credit Card');

-- -- Sample data for Reservation table
-- INSERT INTO Reservation (ReservationID, GuestID, CheckInDate, CheckOutDate, NumberOfGuests, ReservationDate, PaymentID, RoomNumber, ReceptionistID)
-- VALUES
--     (NEWID(), 1, '2023-01-05', '2023-01-15', 2, '2022-12-20', (SELECT PaymentID FROM Payment WHERE ReservationID = 1), 101, (SELECT ReceptionistID FROM Receptionist WHERE FirstName = 'Emily')),
--     (NEWID(), 2, '2023-02-10', '2023-02-20', 1, '2023-01-15', (SELECT PaymentID FROM Payment WHERE ReservationID = 2), 202, (SELECT ReceptionistID FROM Receptionist WHERE FirstName = 'Michael')),
--     (NEWID(), 3, '2023-03-15', '2023-03-25', 3, '2023-02-20', (SELECT PaymentID FROM Payment WHERE ReservationID = 3), 303, (SELECT ReceptionistID FROM Receptionist WHERE FirstName = 'Sophia')),
--     (NEWID(), 4, '2023-04-20', '2023-04-30', 1, '2023-03-25', (SELECT PaymentID FROM Payment WHERE ReservationID = 4), 404, (SELECT ReceptionistID FROM Receptionist WHERE FirstName = 'Daniel')),
--     (NEWID(), 5, '2023-05-25', '2023-06-04', 2, '2023-04-30', (SELECT PaymentID FROM Payment WHERE ReservationID = 5), 505, (SELECT ReceptionistID FROM Receptionist WHERE FirstName = 'Olivia'));


-- -- Sample data for Feedback table
-- INSERT INTO Feedback (FeedbackID, GuestID, ReservationID, Rating, Comments)
-- VALUES
--     (NEWID(), 1, 1, 4, 'Enjoyed my stay, but the room could use more lighting.'),
--     (NEWID(), 2, 2, 5, 'Excellent service and comfortable room.'),
--     (NEWID(), 3, 3, 3, 'Average experience, the hotel facilities need improvement.'),
--     (NEWID(), 4, 4, 4, 'Great staff and clean rooms.'),
--     (NEWID(), 5, 5, 5, 'Fantastic view from the room, highly recommended!');

-- INSERT INTO Hotel (HotelID, Name, Location, Rating, Facilities, StaffID, ServiceID)
-- VALUES
--     (NEWID(), 'Luxury Inn', 'City Center', 4.5, 'Swimming Pool, Gym, Restaurant', (SELECT StaffID FROM Staff WHERE Name = 'Bob Smith'), (SELECT ServiceID FROM Service WHERE ServiceName = 'Room Cleaning')),
--     (NEWID(), 'Cozy Retreat', 'Suburbia', 3.8, 'Free Wi-Fi, Parking', (SELECT StaffID FROM Staff WHERE Name = 'Alice Johnson'), (SELECT ServiceID FROM Service WHERE ServiceName = 'Room Service')),
--     (NEWID(), 'City Lights Hotel', 'Downtown', 4.2, 'Conference Rooms, Bar, Spa', (SELECT StaffID FROM Staff WHERE Name = 'Charlie Brown'), (SELECT ServiceID FROM Service WHERE ServiceName = 'Gym Access')),
--     (NEWID(), 'Seaside Resort', 'Beachfront', 4.7, 'Private Beach, Spa, Restaurant', (SELECT StaffID FROM Staff WHERE Name = 'David Williams'), (SELECT ServiceID FROM Service WHERE ServiceName = 'Airport Shuttle')),
--     (NEWID(), 'Mountain View Lodge', 'Mountains', 4.0, 'Hiking Trails, Fireplace', (SELECT StaffID FROM Staff WHERE Name = 'Eva Davis'), (SELECT ServiceID FROM Service WHERE ServiceName = 'Wi-Fi'));

-- -- Sample data for Guest table
-- INSERT INTO Guest (GuestID, FirstName, LastName, Nationality, DateOfBirth, Address, Email, Phone, HotelID, FeedbackID, ReservationID)
-- VALUES
--     (NEWID(), 'John', 'Doe', 'American', '1990-05-15', '123 Main St, Cityville', 'john.doe@email.com', '555-1234', (SELECT HotelID FROM Hotel WHERE Name = 'Luxury Inn'), (SELECT FeedbackID FROM Feedback WHERE Rating = 4), (SELECT ReservationID FROM Reservation WHERE NumberOfGuests = 2)),
--     (NEWID(), 'Jane', 'Smith', 'British', '1985-08-22', '456 Oak St, Townsville', 'jane.smith@email.com', '555-5678', (SELECT HotelID FROM Hotel WHERE Name = 'Cozy Retreat'), (SELECT FeedbackID FROM Feedback WHERE Rating = 5), (SELECT ReservationID FROM Reservation WHERE NumberOfGuests = 1)),
--     (NEWID(), 'Bob', 'Johnson', 'Canadian', '1988-11-10', '789 Maple St, Villagetown', 'bob.johnson@email.com', '555-9876', (SELECT HotelID FROM Hotel WHERE Name = 'City Lights Hotel'), (SELECT FeedbackID FROM Feedback WHERE Rating = 3), (SELECT ReservationID FROM Reservation WHERE NumberOfGuests = 3)),
--     (NEWID(), 'Alice', 'Williams', 'Australian', '1992-03-03', '101 Pine St, Hamletville', 'alice.williams@email.com', '555-4321', (SELECT HotelID FROM Hotel WHERE Name = 'Seaside Resort'), (SELECT FeedbackID FROM Feedback WHERE Rating = 4), (SELECT ReservationID FROM Reservation WHERE NumberOfGuests = 1)),
--     (NEWID(), 'Charlie', 'Brown', 'German', '1980-07-28', '202 Cedar St, Riverside', 'charlie.brown@email.com', '555-8765', (SELECT HotelID FROM Hotel WHERE Name = 'Mountain View Lodge'), (SELECT FeedbackID FROM Feedback WHERE Rating = 5), (SELECT ReservationID FROM Reservation WHERE NumberOfGuests = 2));

INSERT INTO Guest (GuestID, FirstName, LastName, Nationality, DateOfBirth, Address, Email, Phone)
VALUES
    (NEWID(), 'John', 'Doe', 'American', '1990-05-15', '123 Main St, Cityville', 'john.doe@email.com', '555-1234'),
    (NEWID(), 'Jane', 'Smith', 'British', '1985-08-22', '456 Oak St, Townsville', 'jane.smith@email.com', '555-5678'),
    (NEWID(), 'Bob', 'Johnson', 'Canadian', '1988-11-10', '789 Maple St, Villagetown', 'bob.johnson@email.com', '555-9876'),
    (NEWID(), 'Alice', 'Williams', 'Australian', '1992-03-03', '101 Pine St, Hamletville', 'alice.williams@email.com', '555-4321'),
    (NEWID(), 'Charlie', 'Brown', 'German', '1980-07-28', '202 Cedar St, Riverside', 'charlie.brown@email.com', '555-8765');


--___________________________________________________________________________________________________________
-- INSERT INTO Guest (GuestID, FirstName, LastName, Nationality, DateOfBirth, Address, Email, Phone)
-- VALUES
--     (NEWID(), 'John', 'Doe', 'American', '1990-05-15', '123 Main St, Cityville', 'john.doe@email.com', '555-1234'),
--     (NEWID(), 'Jane', 'Smith', 'British', '1985-08-22', '456 Oak St, Townsville', 'jane.smith@email.com', '555-5678'),
--     (NEWID(), 'Bob', 'Johnson', 'Canadian', '1988-11-10', '789 Maple St, Villagetown', 'bob.johnson@email.com', '555-9876'),
--     (NEWID(), 'Alice', 'Williams', 'Australian', '1992-03-03', '101 Pine St, Hamletville', 'alice.williams@email.com', '555-4321'),
--     (NEWID(), 'Charlie', 'Brown', 'German', '1980-07-28', '202 Cedar St, Riverside', 'charlie.brown@email.com', '555-8765');