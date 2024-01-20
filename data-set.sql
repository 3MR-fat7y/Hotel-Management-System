


INSERT INTO [Hotel] (Chief, Name, Location, Rating, Facilities) VALUES
('Ahmed', 'Nile Plaza Hotel', 'Cairo, Egypt', 4, 'Swimming Pool, Gym, Restaurant, WiFi, Parking'),
('Mohammed', 'Pyramids View Resort', 'Giza, Egypt', 4, 'Swimming Pool, Gym, Restaurant, WiFi, Spa'),
('Fatima', 'Red Sea Oasis Hotel', 'Hurghada, Egypt', 5, 'Swimming Pool, Gym, Restaurant, WiFi, Conference Room'),
('Ali', 'Luxor Palace Hotel', 'Luxor, Egypt', 4, 'Swimming Pool, Gym, Restaurant, WiFi, Rooftop Lounge'),
('Aisha', 'Alexandria Beach Resort', 'Alexandria, Egypt', 4, 'Swimming Pool, Gym, Restaurant, WiFi, Beach Access');

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Service data
INSERT INTO [Service] (HotelID, ServiceName, ServiceType, Description, Cost)
VALUES
  ((SELECT HotelID FROM Hotel WHERE Name = 'Nile Plaza Hotel'), 'Airport Shuttle', 'Transportation', 'Pickup and drop-off to the airport', 20.00),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Nile Plaza Hotel'), 'Concierge Service', 'Hospitality', 'Assistance with reservations and recommendations', 10.00),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Nile Plaza Hotel'), 'Private Dining Experience', 'Dining', 'Exclusive dining experience with a personal chef', 100.00),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Nile Plaza Hotel'), 'VIP Airport Transfer', 'Transportation', 'Luxury airport transfer in a private vehicle', 50.00),

  ((SELECT HotelID FROM Hotel WHERE Name = 'Pyramids View Resort'), 'Tour Packages', 'Tourism', 'Guided tours to historical sites', 50.00),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Pyramids View Resort'), 'Spa Package', 'Wellness', 'Full-day spa experience', 80.00),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Pyramids View Resort'), 'Hot Air Balloon Ride', 'Adventure', 'Experience the breathtaking view from a hot air balloon', 120.00),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Pyramids View Resort'), 'In-Room Massage', 'Wellness', 'Relaxing massage in the comfort of your room', 60.00),
  
  ((SELECT HotelID FROM Hotel WHERE Name = 'Red Sea Oasis Hotel'), 'Diving Excursion', 'Recreation', 'Explore the underwater world with professional instructors', 70.00),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Red Sea Oasis Hotel'), 'Event Planning', 'Event Services', 'Assistance in planning and organizing events', 30.00),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Red Sea Oasis Hotel'), 'Sunset Cruise', 'Recreation', 'Enjoy a romantic sunset cruise along the Red Sea', 80.00),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Red Sea Oasis Hotel'), 'Business Meeting Package', 'Business', 'Tailored package for successful business meetings', 40.00),
  
  ((SELECT HotelID FROM Hotel WHERE Name = 'Luxor Palace Hotel'), 'Hot Stone Massage', 'Wellness', 'Therapeutic massage using hot stones', 70.00),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Luxor Palace Hotel'), 'Cultural Evening Show', 'Entertainment', 'Immerse in the cultural heritage through live performances', 35.00),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Luxor Palace Hotel'), 'Guided City Tour', 'Tourism', 'Discover the cultural heritage of Luxor', 40.00),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Luxor Palace Hotel'), 'Fitness Classes', 'Wellness', 'Group fitness classes for guests', 15.00),
  
  ((SELECT HotelID FROM Hotel WHERE Name = 'Alexandria Beach Resort'), 'Water Sports Package', 'Recreation', 'Exciting water sports activities for adventure seekers', 45.00),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Alexandria Beach Resort'), 'Beach Cabana Rental', 'Recreation', 'Private cabana rental with beachside service', 25.00),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Alexandria Beach Resort'), 'Car Rental', 'Transportation', 'Explore the city at your own pace', 30.00),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Alexandria Beach Resort'), 'Pet Concierge Service', 'Hospitality', 'Luxury service for guests traveling with pets', 25.00);

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Staff data
INSERT INTO [Staff] (HotelID, StaffCategory, Name, Position, ContactInfo)
VALUES  
  ((SELECT HotelID FROM Hotel WHERE Name = 'Nile Plaza Hotel'), 'Gym', 'Ahmed Ali', 'Trainer', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Nile Plaza Hotel'), 'Restaurant', 'Fatima Hassan', 'Chef', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Nile Plaza Hotel'), 'Pool', 'Khaled Mahmoud', 'Lifeguard', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Nile Plaza Hotel'), 'Spa', 'Nada Ahmed', 'Therapist', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Nile Plaza Hotel'), 'Business Center', 'Omar Samir', 'Coordinator', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Pyramids View Resort'), 'Gym', 'Sara Kamal', 'Trainer', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Pyramids View Resort'), 'Restaurant', 'Ali Mahmoud', 'Chef', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Pyramids View Resort'), 'Pool', 'Lina Ahmed', 'Lifeguard', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Pyramids View Resort'), 'Spa', 'Ahmed Salah', 'Therapist', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Pyramids View Resort'), 'Business Center', 'Mona Hamed', 'Coordinator', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Red Sea Oasis Hotel'), 'Gym', 'Mohamed Ahmed', 'Trainer', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Red Sea Oasis Hotel'), 'Restaurant', 'Hala Samir', 'Chef', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Red Sea Oasis Hotel'), 'Pool', 'Amr Ali', 'Lifeguard', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Red Sea Oasis Hotel'), 'Spa', 'Noura Hassan', 'Therapist', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Red Sea Oasis Hotel'), 'Business Center', 'Youssef Kamal', 'Coordinator', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Luxor Palace Hotel'), 'Gym', 'Laila Mohamed', 'Trainer', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Luxor Palace Hotel'), 'Restaurant', 'Adel Ibrahim', 'Chef', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Luxor Palace Hotel'), 'Pool', 'Nada Sami', 'Lifeguard', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Luxor Palace Hotel'), 'Spa', 'Omar Ahmed', 'Therapist', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Luxor Palace Hotel'), 'Business Center', 'Salma Hossam', 'Coordinator', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Alexandria Beach Resort'), 'Gym', 'Tamer Samir', 'Trainer', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Alexandria Beach Resort'), 'Restaurant', 'Dina Ahmed', 'Chef', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Alexandria Beach Resort'), 'Pool', 'Sami Ibrahim', 'Lifeguard', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Alexandria Beach Resort'), 'Spa', 'Rania Mohamed', 'Therapist', '0123456789'),
  ((SELECT HotelID FROM Hotel WHERE Name = 'Alexandria Beach Resort'), 'Business Center', 'Khaled Hossam', 'Coordinator', '0123456789');

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Receptionist data
INSERT INTO Receptionist (FirstName, LastName, HotelName, DateOfBirth, Position, Salary, HireDate)
VALUES
  -- Nile Plaza Hotel Receptionists
  ('Sara', 'Ahmed', 'Nile Plaza Hotel', '1990-01-15', 'Front Desk Manager', 5000.00, '2022-01-01'),
  ('Ahmed', 'Mohamed', 'Nile Plaza Hotel', '1995-05-20', 'Senior Receptionist', 4000.00, '2022-02-15'),
  ('Lina', 'Abdelaziz', 'Nile Plaza Hotel', '1992-08-10', 'Concierge', 3500.00, '2022-03-20'),
  ('Omar', 'Mahmoud', 'Nile Plaza Hotel', '1993-11-25', 'Receptionist', 3000.00, '2022-04-10'),
  ('Mona', 'Hassan', 'Nile Plaza Hotel', '1991-03-05', 'Night Auditor', 3200.00, '2022-05-05'),

  -- Pyramids View Resort Receptionists
  ('Ali', 'Hassan', 'Pyramids View Resort', '1988-07-22', 'Front Desk Manager', 5200.00, '2022-01-01'),
  ('Sara', 'Mohamed', 'Pyramids View Resort', '1994-04-18', 'Senior Receptionist', 4100.00, '2022-02-15'),
  ('Ahmed', 'Abdelrahman', 'Pyramids View Resort', '1996-09-30', 'Concierge', 3600.00, '2022-03-20'),
  ('Nadia', 'Khaled', 'Pyramids View Resort', '1990-12-12', 'Receptionist', 3100.00, '2022-04-10'),
  ('Hossam', 'Mohamed', 'Pyramids View Resort', '1992-02-28', 'Night Auditor', 3300.00, '2022-05-05'),

  -- Red Sea Oasis Hotel Receptionists
  ('Nour', 'Ahmed', 'Red Sea Oasis Hotel', '1989-04-05', 'Front Desk Manager', 4900.00, '2022-01-01'),
  ('Hassan', 'Khalil', 'Red Sea Oasis Hotel', '1993-08-14', 'Senior Receptionist', 3800.00, '2022-02-15'),
  ('Aya', 'Sami', 'Red Sea Oasis Hotel', '1995-01-28', 'Concierge', 3300.00, '2022-03-20'),
  ('Karim', 'Fatima', 'Red Sea Oasis Hotel', '1994-06-08', 'Receptionist', 2800.00, '2022-04-10'),
  ('Maya', 'Ali', 'Red Sea Oasis Hotel', '1991-10-15', 'Night Auditor', 3000.00, '2022-05-05'),

  -- Luxor Palace Hotel Receptionists
  ('Ahmed', 'Mohsen', 'Luxor Palace Hotel', '1992-03-18', 'Front Desk Manager', 5100.00, '2022-01-01'),
  ('Laila', 'Mahmoud', 'Luxor Palace Hotel', '1996-06-25', 'Senior Receptionist', 3900.00, '2022-02-15'),
  ('Mohamed', 'Samir', 'Luxor Palace Hotel', '1994-09-10', 'Concierge', 3400.00, '2022-03-20'),
  ('Nada', 'Youssef', 'Luxor Palace Hotel', '1990-12-01', 'Receptionist', 2900.00, '2022-04-10'),
  ('Hassan', 'Amr', 'Luxor Palace Hotel', '1993-02-12', 'Night Auditor', 3100.00, '2022-05-05'),

  -- Alexandria Beach Resort Receptionists
  ('Dina', 'Ali', 'Alexandria Beach Resort', '1991-11-08', 'Front Desk Manager', 4800.00, '2022-01-01'),
  ('Ahmed', 'Salma', 'Alexandria Beach Resort', '1997-04-15', 'Senior Receptionist', 3700.00, '2022-02-15'),
  ('Sami', 'Hoda', 'Alexandria Beach Resort', '1993-07-30', 'Concierge', 3200.00, '2022-03-20'),
  ('Rania', 'Mohamed', 'Alexandria Beach Resort', '1995-10-05', 'Receptionist', 2700.00, '2022-04-10'),
  ('Khaled', 'Fatima', 'Alexandria Beach Resort', '1992-01-18', 'Night Auditor', 2900.00, '2022-05-05');

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- Miscellaneous feedback with a rating
INSERT INTO Feedback (Rate, Comments)
VALUES
  (5.0, 'Excellent service and facilities!'),
  (4.5, 'Great experience overall.'),
  (3.8, 'Average service, could be improved.'),
  (5.0, 'Outstanding staff and amenities.'),
  (2.9, 'Not satisfied with the cleanliness.'),
  (4.2, 'Friendly and helpful staff.'),
  (3.5, 'Good but could be better.'),
  (5.0, 'Highly recommended!'),
  (4.5, 'Enjoyed the stay, thank you.'),
  (3.3, 'Some issues with room service.'),
  (5.0, 'Beautiful hotel with excellent views.'),
  (2.5, 'Unpleasant experience, won''t recommend.'),
  (4.0, 'Comfortable rooms and nice amenities.'),
  (3.5, 'Average stay, nothing special.'),
  (5.0, 'Fantastic staff and delicious food.'),
  (4.3, 'Good value for money.'),
  (3.5, 'Could use improvement in customer service.'),
  (5.0, 'Lovely hotel with great ambiance.'),
  (4.3, 'Pleasant stay, would visit again.'),
  (3.3, 'Issues with room maintenance.');


  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Guest (FeedbackID, HotelID, FirstName, LastName, Nationality, DateOfBirth, Address, Email, Phone)
VALUES
  ((SELECT TOP 1 FeedbackID FROM Feedback ORDER BY NEWID()), (SELECT HotelID FROM Hotel WHERE Name = 'Nile Plaza Hotel'), 'Ahmed', 'Ali', 'Egyptian', '1990-02-10', '123 Main St, Cairo', 'ahmed.ali@email.com', '0123456789'),
  ((SELECT TOP 1 FeedbackID FROM Feedback ORDER BY NEWID()), (SELECT HotelID FROM Hotel WHERE Name = 'Nile Plaza Hotel'), 'Sara', 'Mohamed', 'American', '1985-06-15', '456 Oak St, Giza', 'sara.mohamed@email.com', '0987654321'),
  ((SELECT TOP 1 FeedbackID FROM Feedback ORDER BY NEWID()), (SELECT HotelID FROM Hotel WHERE Name = 'Nile Plaza Hotel'), 'Ali', 'Hassan', 'Russian', '1992-08-20', '789 Pine St, Hurghada', 'ali.hassan@email.com', '0123456789'),
  ((SELECT TOP 1 FeedbackID FROM Feedback ORDER BY NEWID()), (SELECT HotelID FROM Hotel WHERE Name = 'Nile Plaza Hotel'), 'Nadia', 'Khaled', 'Egyptian', '1988-11-25', '101 Cedar St, Luxor', 'nadia.khaled@email.com', '0987654321'),
  ((SELECT TOP 1 FeedbackID FROM Feedback ORDER BY NEWID()), (SELECT HotelID FROM Hotel WHERE Name = 'Pyramids View Resort'), 'Youssef', 'Kamal', 'Italian', '1995-03-05', '202 Elm St, Alexandria', 'youssef.kamal@email.com', '0123456789'),
  ((SELECT TOP 1 FeedbackID FROM Feedback ORDER BY NEWID()), (SELECT HotelID FROM Hotel WHERE Name = 'Pyramids View Resort'), 'Maya', 'Sami', 'Turkish', '1987-07-22', '303 Birch St, Cairo', 'maya.sami@email.com', '0987654321'),
  ((SELECT TOP 1 FeedbackID FROM Feedback ORDER BY NEWID()), (SELECT HotelID FROM Hotel WHERE Name = 'Pyramids View Resort'), 'Amr', 'Ahmed', 'Russian', '1993-10-15', '404 Maple St, Giza', 'amr.ahmed@email.com', '0123456789'),
  ((SELECT TOP 1 FeedbackID FROM Feedback ORDER BY NEWID()), (SELECT HotelID FROM Hotel WHERE Name = 'Pyramids View Resort'), 'Laila', 'Mahmoud', 'Egyptian', '1991-04-18', '505 Cedar St, Hurghada', 'laila.mahmoud@email.com', '0987654321'),
  ((SELECT TOP 1 FeedbackID FROM Feedback ORDER BY NEWID()), (SELECT HotelID FROM Hotel WHERE Name = 'Red Sea Oasis Hotel'), 'Hassan', 'Khaled', 'Turkish', '1996-02-28', '606 Oak St, Luxor', 'hassan.khaled@email.com', '0123456789'),
  ((SELECT TOP 1 FeedbackID FROM Feedback ORDER BY NEWID()), (SELECT HotelID FROM Hotel WHERE Name = 'Red Sea Oasis Hotel'), 'Fatima', 'Ali', 'Egyptian', '1989-09-30', '707 Pine St, Alexandria', 'fatima.ali@email.com', '0987654321'),
  ((SELECT TOP 1 FeedbackID FROM Feedback ORDER BY NEWID()), (SELECT HotelID FROM Hotel WHERE Name = 'Red Sea Oasis Hotel'), 'Omar', 'Salma', 'Turkish', '1994-12-12', '808 Cedar St, Cairo', 'omar.salma@email.com', '0123456789'),
  ((SELECT TOP 1 FeedbackID FROM Feedback ORDER BY NEWID()), (SELECT HotelID FROM Hotel WHERE Name = 'Red Sea Oasis Hotel'), 'Noura', 'Youssef', 'Egyptian', '1997-05-20', '909 Elm St, Giza', 'noura.youssef@email.com', '0987654321'),
  ((SELECT TOP 1 FeedbackID FROM Feedback ORDER BY NEWID()), (SELECT HotelID FROM Hotel WHERE Name = 'Luxor Palace Hotel'), 'Khaled', 'Mona', 'Australian', '1992-09-10', '1010 Maple St, Hurghada', 'khaled.mona@email.com', '0123456789'),
  ((SELECT TOP 1 FeedbackID FROM Feedback ORDER BY NEWID()), (SELECT HotelID FROM Hotel WHERE Name = 'Luxor Palace Hotel'), 'Sami', 'Hala', 'Canadian', '1990-06-25', '1111 Birch St, Luxor', 'sami.hala@email.com', '0987654321'),
  ((SELECT TOP 1 FeedbackID FROM Feedback ORDER BY NEWID()), (SELECT HotelID FROM Hotel WHERE Name = 'Luxor Palace Hotel'), 'Rania', 'Karim', 'Russian', '1994-01-28', '1212 Pine St, Alexandria', 'rania.karim@email.com', '0123456789'),
  ((SELECT TOP 1 FeedbackID FROM Feedback ORDER BY NEWID()), (SELECT HotelID FROM Hotel WHERE Name = 'Luxor Palace Hotel'), 'Ahmed', 'Nada', 'Turkish', '1993-03-18', '1313 Cedar St, Cairo', 'ahmed.nada@email.com', '0987654321'),
  ((SELECT TOP 1 FeedbackID FROM Feedback ORDER BY NEWID()), (SELECT HotelID FROM Hotel WHERE Name = 'Alexandria Beach Resort'), 'Dina', 'Ahmed', 'Egyptian', '1995-08-14', '1414 Elm St, Giza', 'dina.ahmed@email.com', '0123456789'),
  ((SELECT TOP 1 FeedbackID FROM Feedback ORDER BY NEWID()), (SELECT HotelID FROM Hotel WHERE Name = 'Alexandria Beach Resort'), 'Ali', 'Sara', 'American', '1988-01-28', '1515 Oak St, Hurghada', 'ali.sara@email.com', '0987654321'),
  ((SELECT TOP 1 FeedbackID FROM Feedback ORDER BY NEWID()), (SELECT HotelID FROM Hotel WHERE Name = 'Alexandria Beach Resort'), 'Lina', 'Omar', 'American', '1991-07-30', '1616 Pine St, Luxor', 'lina.omar@email.com', '0123456789'),
  ((SELECT TOP 1 FeedbackID FROM Feedback ORDER BY NEWID()), (SELECT HotelID FROM Hotel WHERE Name = 'Alexandria Beach Resort'), 'Karim', 'Nadia', 'Turkish', '1996-10-05', '1717 Cedar St, Alexandria', 'karim.nadia@email.com', '0987654321');

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Room (RoomNumber, ReservationID, RoomType, RoomRate, BedType, RoomCategory, RoomView, Branch, Availability, Description)
VALUES
(101,(SELECT TOP 1 ReservationID FROM Reservation ORDER BY NEWID()), 'Standard', 150.00, 'Double', 'Standard', 'City View', 'Nile Plaza Hotel', 0, 'Cozy room with a view of the city.'),
(102,(SELECT TOP 1 ReservationID FROM Reservation ORDER BY NEWID()), 'Standard', 150.00, 'Double', 'Standard', 'City View', 'Nile Plaza Hotel', 1, 'Cozy room with a view of the city.'),
(103,(SELECT TOP 1 ReservationID FROM Reservation ORDER BY NEWID()), 'Deluxe', 200.00, 'King', 'Deluxe', 'Nile View', 'Nile Plaza Hotel', 1, 'Spacious room with a beautiful view of the Nile River.'),
(104,(SELECT TOP 1 ReservationID FROM Reservation ORDER BY NEWID()), 'Deluxe', 200.00, 'King', 'Deluxe', 'Nile View', 'Nile Plaza Hotel', 0, 'Spacious room with a beautiful view of the Nile River.'),
(105,(SELECT TOP 1 ReservationID FROM Reservation ORDER BY NEWID()), 'Suite', 300.00, 'King', 'Suite', 'City View', 'Pyramids View Resort', 0, 'Luxurious suite with a panoramic city view.'),
(106,(SELECT TOP 1 ReservationID FROM Reservation ORDER BY NEWID()), 'Suite', 300.00, 'King', 'Suite', 'City View', 'Pyramids View Resort', 1, 'Luxurious suite with a panoramic city view.'),
(107,(SELECT TOP 1 ReservationID FROM Reservation ORDER BY NEWID()), 'Standard', 150.00, 'Double', 'Standard', 'City View', 'Pyramids View Resort', 1, 'Comfortable room with a view of the city.'),
(108,(SELECT TOP 1 ReservationID FROM Reservation ORDER BY NEWID()), 'Standard', 150.00, 'Double', 'Standard', 'City View', 'Pyramids View Resort', 0, 'Comfortable room with a view of the city.'),
(109,(SELECT TOP 1 ReservationID FROM Reservation ORDER BY NEWID()), 'Deluxe', 200.00, 'King', 'Deluxe', 'Nile View', 'Red Sea Oasis Hotel', 0, 'Elegant room with a stunning view of the Nile River.'),
(110,(SELECT TOP 1 ReservationID FROM Reservation ORDER BY NEWID()), 'Deluxe', 200.00, 'King', 'Deluxe', 'Nile View', 'Red Sea Oasis Hotel', 1, 'Elegant room with a stunning view of the Nile River.'),
(111,(SELECT TOP 1 ReservationID FROM Reservation ORDER BY NEWID()), 'Suite', 300.00, 'King', 'Suite', 'City View', 'Red Sea Oasis Hotel', 1, 'Exclusive suite with a panoramic city view.'),
(112,(SELECT TOP 1 ReservationID FROM Reservation ORDER BY NEWID()), 'Suite', 300.00, 'King', 'Suite', 'City View', 'Red Sea Oasis Hotel', 0, 'Exclusive suite with a panoramic city view.'),
(113,(SELECT TOP 1 ReservationID FROM Reservation ORDER BY NEWID()), 'Standard', 150.00, 'Double', 'Standard', 'City View', 'Luxor Palace Hotel', 0, 'Cozy room with a view of the city.'),
(114,(SELECT TOP 1 ReservationID FROM Reservation ORDER BY NEWID()), 'Standard', 150.00, 'Double', 'Standard', 'City View', 'Luxor Palace Hotel', 1, 'Cozy room with a view of the city.'),
(115,(SELECT TOP 1 ReservationID FROM Reservation ORDER BY NEWID()), 'Deluxe', 200.00, 'King', 'Deluxe', 'Nile View', 'Luxor Palace Hotel', 1, 'Spacious room with a beautiful view of the Nile River.'),
(116,(SELECT TOP 1 ReservationID FROM Reservation ORDER BY NEWID()), 'Deluxe', 200.00, 'King', 'Deluxe', 'Nile View', 'Luxor Palace Hotel', 0, 'Spacious room with a beautiful view of the Nile River.'),
(117,(SELECT TOP 1 ReservationID FROM Reservation ORDER BY NEWID()), 'Suite', 300.00, 'King', 'Suite', 'City View', 'Alexandria Beach Resort', 0, 'Luxurious suite with a panoramic city view.'),
(118,(SELECT TOP 1 ReservationID FROM Reservation ORDER BY NEWID()), 'Suite', 300.00, 'King', 'Suite', 'City View', 'Alexandria Beach Resort', 1, 'Luxurious suite with a panoramic city view.'),
(119,(SELECT TOP 1 ReservationID FROM Reservation ORDER BY NEWID()), 'Standard', 150.00, 'Double', 'Standard', 'City View', 'Alexandria Beach Resort', 1, 'Comfortable room with a view of the city.'),
(120,(SELECT TOP 1 ReservationID FROM Reservation ORDER BY NEWID()), 'Standard', 150.00, 'Double', 'Standard', 'City View', 'Alexandria Beach Resort', 0, 'Comfortable room with a view of the city.');

-- Dummy data for Payment table
INSERT INTO Payment (PaymentDate, Amount, PaymentMethod)
VALUES
    ('2023-05-10', 150.00, 'Cash'),
    ('2023-06-15', 200.50, 'Visa'),
    ('2023-07-20', 180.75, 'Cash'),
    ('2023-08-25', 300.25, 'Visa'),
    ('2023-09-30', 250.00, 'Cash'),
    ('2023-10-05', 120.00, 'Visa'),
    ('2023-11-10', 180.50, 'Cash'),
    ('2023-12-15', 220.75, 'Visa'),
    ('2024-01-20', 160.25, 'Cash'),
    ('2024-02-25', 280.00, 'Visa'),
    ('2024-04-05', 180.00, 'Cash'),
    ('2024-05-10', 210.50, 'Visa'),
    ('2024-06-15', 190.75, 'Cash'),
    ('2024-07-20', 320.25, 'Visa'),
    ('2024-08-25', 260.00, 'Cash'),
    ('2024-09-30', 140.00, 'Visa'),
    ('2024-10-05', 200.50, 'Cash'),
    ('2024-11-10', 240.75, 'Visa'),
    ('2024-12-15', 170.25, 'Cash'),
    ('2025-01-20', 290.00, 'Visa');

-- Dummy data for Reservation table
INSERT INTO Reservation (PaymentID, GuestID, CheckInDate, CheckOutDate, NumberOfGuests, ReservationDate, RoomNumber, ReceptionistID)
VALUES
  ((SELECT TOP 1 PaymentID FROM Payment ORDER BY NEWID()), (SELECT TOP 1 GuestID FROM Guest ORDER BY NEWID()), '2023-05-05', '2023-05-15', 2, '2023-04-25', 101, (SELECT TOP 1 ReceptionistID FROM Receptionist ORDER BY NEWID())),
  ((SELECT TOP 1 PaymentID FROM Payment ORDER BY NEWID()), (SELECT TOP 1 GuestID FROM Guest ORDER BY NEWID()), '2023-06-10', '2023-06-20', 3, '2023-05-30', 102, (SELECT TOP 1 ReceptionistID FROM Receptionist ORDER BY NEWID())),
  ((SELECT TOP 1 PaymentID FROM Payment ORDER BY NEWID()), (SELECT TOP 1 GuestID FROM Guest ORDER BY NEWID()), '2023-07-15', '2023-07-25', 4, '2023-07-05', 103, (SELECT TOP 1 ReceptionistID FROM Receptionist ORDER BY NEWID())),
  ((SELECT TOP 1 PaymentID FROM Payment ORDER BY NEWID()), (SELECT TOP 1 GuestID FROM Guest ORDER BY NEWID()), '2023-08-20', '2023-08-30', 2, '2023-08-10', 104, (SELECT TOP 1 ReceptionistID FROM Receptionist ORDER BY NEWID())),
  ((SELECT TOP 1 PaymentID FROM Payment ORDER BY NEWID()), (SELECT TOP 1 GuestID FROM Guest ORDER BY NEWID()), '2023-09-25', '2023-10-05', 3, '2023-09-15', 105, (SELECT TOP 1 ReceptionistID FROM Receptionist ORDER BY NEWID())),
  ((SELECT TOP 1 PaymentID FROM Payment ORDER BY NEWID()), (SELECT TOP 1 GuestID FROM Guest ORDER BY NEWID()), '2023-10-30', '2023-11-09', 4, '2023-10-20', 106, (SELECT TOP 1 ReceptionistID FROM Receptionist ORDER BY NEWID())),
  ((SELECT TOP 1 PaymentID FROM Payment ORDER BY NEWID()), (SELECT TOP 1 GuestID FROM Guest ORDER BY NEWID()), '2023-12-05', '2023-12-15', 2, '2023-11-25', 107, (SELECT TOP 1 ReceptionistID FROM Receptionist ORDER BY NEWID())),
  ((SELECT TOP 1 PaymentID FROM Payment ORDER BY NEWID()), (SELECT TOP 1 GuestID FROM Guest ORDER BY NEWID()), '2024-01-10', '2024-01-20', 3, '2023-12-30', 108, (SELECT TOP 1 ReceptionistID FROM Receptionist ORDER BY NEWID())),
  ((SELECT TOP 1 PaymentID FROM Payment ORDER BY NEWID()), (SELECT TOP 1 GuestID FROM Guest ORDER BY NEWID()), '2024-02-15', '2024-02-25', 4, '2024-02-05', 109, (SELECT TOP 1 ReceptionistID FROM Receptionist ORDER BY NEWID())),
  ((SELECT TOP 1 PaymentID FROM Payment ORDER BY NEWID()), (SELECT TOP 1 GuestID FROM Guest ORDER BY NEWID()), '2024-03-20', '2024-03-30', 2, '2024-03-10', 110, (SELECT TOP 1 ReceptionistID FROM Receptionist ORDER BY NEWID())),
  ((SELECT TOP 1 PaymentID FROM Payment ORDER BY NEWID()), (SELECT TOP 1 GuestID FROM Guest ORDER BY NEWID()), '2024-04-01', '2024-04-10', 2, '2024-03-20', 201, (SELECT TOP 1 ReceptionistID FROM Receptionist ORDER BY NEWID())),
  ((SELECT TOP 1 PaymentID FROM Payment ORDER BY NEWID()), (SELECT TOP 1 GuestID FROM Guest ORDER BY NEWID()), '2024-05-06', '2024-05-15', 3, '2024-04-25', 202, (SELECT TOP 1 ReceptionistID FROM Receptionist ORDER BY NEWID())),
  ((SELECT TOP 1 PaymentID FROM Payment ORDER BY NEWID()), (SELECT TOP 1 GuestID FROM Guest ORDER BY NEWID()), '2024-06-11', '2024-06-20', 4, '2024-06-01', 203, (SELECT TOP 1 ReceptionistID FROM Receptionist ORDER BY NEWID())),
  ((SELECT TOP 1 PaymentID FROM Payment ORDER BY NEWID()), (SELECT TOP 1 GuestID FROM Guest ORDER BY NEWID()), '2024-07-16', '2024-07-25', 2, '2024-07-05', 204, (SELECT TOP 1 ReceptionistID FROM Receptionist ORDER BY NEWID())),
  ((SELECT TOP 1 PaymentID FROM Payment ORDER BY NEWID()), (SELECT TOP 1 GuestID FROM Guest ORDER BY NEWID()), '2024-08-21', '2024-08-30', 3, '2024-08-10', 205, (SELECT TOP 1 ReceptionistID FROM Receptionist ORDER BY NEWID())),
  ((SELECT TOP 1 PaymentID FROM Payment ORDER BY NEWID()), (SELECT TOP 1 GuestID FROM Guest ORDER BY NEWID()), '2024-09-26', '2024-10-05', 4, '2024-09-15', 206, (SELECT TOP 1 ReceptionistID FROM Receptionist ORDER BY NEWID())),
  ((SELECT TOP 1 PaymentID FROM Payment ORDER BY NEWID()), (SELECT TOP 1 GuestID FROM Guest ORDER BY NEWID()), '2024-10-31', '2024-11-09', 2, '2024-10-20', 207, (SELECT TOP 1 ReceptionistID FROM Receptionist ORDER BY NEWID())),
  ((SELECT TOP 1 PaymentID FROM Payment ORDER BY NEWID()), (SELECT TOP 1 GuestID FROM Guest ORDER BY NEWID()), '2024-12-06', '2024-12-15', 3, '2024-11-25', 208, (SELECT TOP 1 ReceptionistID FROM Receptionist ORDER BY NEWID())),
  ((SELECT TOP 1 PaymentID FROM Payment ORDER BY NEWID()), (SELECT TOP 1 GuestID FROM Guest ORDER BY NEWID()), '2025-01-11', '2025-01-20', 4, '2024-12-30', 209, (SELECT TOP 1 ReceptionistID FROM Receptionist ORDER BY NEWID())),
  ((SELECT TOP 1 PaymentID FROM Payment ORDER BY NEWID()), (SELECT TOP 1 GuestID FROM Guest ORDER BY NEWID()), '2025-02-16', '2025-02-25', 2, '2025-02-05', 210, (SELECT TOP 1 ReceptionistID FROM Receptionist ORDER BY NEWID()));