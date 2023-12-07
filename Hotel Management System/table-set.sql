
-- DROP TABLE Staff;
-- DROP TABLE Payment;
-- DROP TABLE Service;
-- DROP TABLE Feedback;
-- DROP TABLE Receptionist;
-- DROP TABLE Reservation;
-- DROP TABLE Hotel;
-- DROP TABLE Room;
-- DROP TABLE Guest;
-- DROP TABLE [IF EXISTS] Service;
-- select @@servername >> to desplay the server name




CREATE TABLE Service (
    ServiceID uniqueidentifier PRIMARY KEY,
    ServiceName VARCHAR(255),
    ServiceType VARCHAR(255),
    Description VARCHAR(MAX),
    Cost DECIMAL(10, 2),
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Staff (
    StaffID uniqueidentifier PRIMARY KEY,
    HotelID INT,
    StaffCategory VARCHAR(255),
    Name VARCHAR(255),
    Position VARCHAR(255),
    ContactInfo VARCHAR(20)
);

CREATE TABLE Hotel (
    HotelID uniqueidentifier PRIMARY KEY,
    Name VARCHAR(255),
    Location VARCHAR(255),
    Rating FLOAT,
    Facilities VARCHAR(255),
    StaffID uniqueidentifier,
    ServiceID uniqueidentifier,
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID),
    FOREIGN KEY (ServiceID) REFERENCES Service(ServiceID)
);

------------------------------------------------------

CREATE TABLE Room (
    RoomNumber INT PRIMARY KEY,
    RoomType VARCHAR(255),
    RoomRate DECIMAL(10, 2),
    BedType VARCHAR(255),
    RoomCategory VARCHAR(255),
    RoomView VARCHAR(255),
    Location VARCHAR(255),
    Availability BIT,
    Description VARCHAR(MAX),
    -- FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID),
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt DATETIME DEFAULT CURRENT_TIMESTAMP 
);

CREATE TABLE Receptionist (
    ReceptionistID uniqueidentifier PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    DateOfBirth DATE,
    Position VARCHAR(255),
    Salary DECIMAL(10, 2),
    HireDate DATE,
    -- FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID),
);

CREATE TABLE Payment (
    PaymentID uniqueidentifier PRIMARY KEY,
    ReservationID INT,
    PaymentDate DATE,
    Amount DECIMAL(10, 2),
    PaymentMethod VARCHAR(255),
    -- FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID),
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Reservation (
    ReservationID uniqueidentifier PRIMARY KEY,
    GuestID INT,
    CheckInDate DATE,
    CheckOutDate DATE,
    NumberOfGuests INT,
    ReservationDate DATE,
    PaymentID uniqueidentifier,
    RoomNumber int,
    ReceptionistID uniqueidentifier,
    FOREIGN KEY (RoomNumber) REFERENCES Room(RoomNumber),
    FOREIGN KEY (PaymentID) REFERENCES Payment(PaymentID),
    FOREIGN KEY (ReceptionistID) REFERENCES Receptionist(ReceptionistID),
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt DATETIME DEFAULT CURRENT_TIMESTAMP 
);
---------------------------------------------------------------
CREATE TABLE Feedback (
    FeedbackID uniqueidentifier PRIMARY KEY,
    GuestID INT,
    ReservationID INT,
    Rating INT,
    Comments VARCHAR(MAX),
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Guest (
    GuestID uniqueidentifier PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Nationality VARCHAR(255),
    DateOfBirth DATE,
    Address VARCHAR(255),
    Email VARCHAR(255),
    Phone VARCHAR(20),
    HotelID uniqueidentifier,
    FeedbackID uniqueidentifier,
    ReservationID uniqueidentifier,
    FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID),
    FOREIGN KEY (FeedbackID) REFERENCES Feedback(FeedbackID),
    FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID),
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);