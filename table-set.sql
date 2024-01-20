
CREATE TABLE [Hotel] (
    [HotelID] uniqueidentifier DEFAULT NEWID() PRIMARY KEY,
    [Chief] VARCHAR(255),
    [Name] VARCHAR(255),
    [Location] VARCHAR(255),
    [Rating] INT,
    [Facilities] VARCHAR(255)
);

CREATE TABLE [Service] (
    [ServiceID] uniqueidentifier DEFAULT NEWID() PRIMARY KEY,
    [HotelID] uniqueidentifier NOT NULL,
    [ServiceName] VARCHAR(255),
    [ServiceType] VARCHAR(255),
    [Description] VARCHAR(MAX),
    [Cost] DECIMAL(10, 2),
    [CreatedAt] DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT [provides] FOREIGN KEY ([HotelID]) REFERENCES Hotel([HotelID]) ON UPDATE CASCADE
);

CREATE TABLE [Staff] (
    [StaffID] uniqueidentifier DEFAULT NEWID() PRIMARY KEY,
    [HotelID] uniqueidentifier NOT NULL,
    [StaffCategory] VARCHAR(255),
    [Name] VARCHAR(255),
    [Position] VARCHAR(255),
    [ContactInfo] VARCHAR(20),
    CONSTRAINT [employ] FOREIGN KEY ([HotelID]) REFERENCES Hotel([HotelID]) ON UPDATE CASCADE
);

CREATE TABLE [Receptionist] (
    [ReceptionistID] uniqueidentifier DEFAULT NEWID() PRIMARY KEY CLUSTERED ,
    [FirstName] VARCHAR(255),
    [LastName] VARCHAR(255),
    [HotelName] VARCHAR(255),
    [DateOfBirth] DATE,
    [Position] VARCHAR(255),
    [Salary] DECIMAL(10, 2),
    [HireDate] DATE,
    [HotelID] uniqueidentifier
    CONSTRAINT [work at] FOREIGN KEY ([HotelID]) REFERENCES Hotel([HotelID]) --ON UPDATE CASCADE
);

CREATE TABLE [Payment] (
    [PaymentID] uniqueidentifier DEFAULT NEWID() PRIMARY KEY,
    [PaymentDate] DATE,
    [Amount] DECIMAL(10, 2),
    [PaymentMethod] VARCHAR(255) CHECK ([PaymentMethod] IN ('Cash', 'Visa')),
    [CreatedAt] DATETIME DEFAULT CURRENT_TIMESTAMP,
    [UpdatedAt] DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE [Reservation] (
    [ReservationID] uniqueidentifier DEFAULT NEWID() PRIMARY KEY,
    [PaymentID] uniqueidentifier NOT NULL,
    [GuestID] uniqueidentifier NOT NULL,
    [CheckInDate] DATE NOT NULL,
    [CheckOutDate] DATE NOT NULL,
    [NumberOfGuests] INT,
    [ReservationDate] DATE NOT NULL,
    [RoomNumber] int NOT NULL,
    [ReceptionistID] uniqueidentifier,
    CONSTRAINT [approve] FOREIGN KEY ([PaymentID]) REFERENCES Payment([PaymentID])ON UPDATE CASCADE,
    CONSTRAINT [confirm] FOREIGN KEY ([ReceptionistID]) REFERENCES Receptionist([ReceptionistID]) ON UPDATE CASCADE,
    [CreatedAt] DATETIME DEFAULT CURRENT_TIMESTAMP,
    [UpdatedAt] DATETIME DEFAULT CURRENT_TIMESTAMP 
);

CREATE TABLE [Room] (
    [RoomNumber] INT PRIMARY KEY,
    [ReservationID] uniqueidentifier,
    [RoomType] VARCHAR(255),
    [RoomRate] DECIMAL(10, 2),
    [BedType] VARCHAR(255),
    [RoomCategory] VARCHAR(255),
    [RoomView] VARCHAR(255),
    [Branch] VARCHAR(255),
    [Availability] BIT ,
    [Description] VARCHAR(MAX),
    CONSTRAINT [Reserved] FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID) ON UPDATE CASCADE,
    [CreatedAt] DATETIME DEFAULT CURRENT_TIMESTAMP,
    [UpdatedAt] DATETIME DEFAULT CURRENT_TIMESTAMP 
);

CREATE TABLE [Feedback] (
    [FeedbackID] uniqueidentifier DEFAULT NEWID() PRIMARY KEY,
    [Rate] FLOAT NOT NULL,
    [Comments] varchar(MAX),
    [CreatedAt] DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE [Guest] (
    [GuestID] uniqueidentifier DEFAULT NEWID() PRIMARY KEY,
    [FeedbackID] uniqueidentifier,
    [HotelID] uniqueidentifier NOT NULL,
    [FirstName] varchar(50) NOT NULL,
    [LastName] varchar(50) ,
    [Nationality] varchar(50) ,
    [DateOfBirth] date ,
    [Address] varchar(50) ,
    [Email] varchar(50) ,
    [Phone] varchar(50) ,
    [CreatedAt] [DATETIME] DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT [gives] FOREIGN KEY ([FeedbackID]) REFERENCES Feedback([FeedbackID]) ON UPDATE CASCADE,
    CONSTRAINT [receive] FOREIGN KEY ([HotelID]) REFERENCES Hotel([HotelID]) ON UPDATE CASCADE
);

CREATE TABLE [Guest-Reservation] (
    [GuestID] uniqueidentifier,
    [ReservationID] uniqueidentifier,
    [ReservationDate] DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY ([GuestID], [ReservationID]),
    CONSTRAINT [make] FOREIGN KEY ([GuestID]) REFERENCES Guest(GuestID) ON UPDATE CASCADE,
    CONSTRAINT [Reserve] FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID) ON UPDATE CASCADE
);

