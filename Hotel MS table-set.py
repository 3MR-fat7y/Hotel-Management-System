import pyodbc

# Set up your SQL Server connection parameters
myconnection = pyodbc.connect(
        DSN='SQLserver',
        server='DESKTOP-AS4PUFE',
        database='Hotel Management System',
        driver='{ODBC Driver 18 for SQL Server}'
        # username='DESKTOP-AS4PUFE\\amr fathy',
        # password='*********',
    )

cursor = myconnection.cursor()

service_data = [
    ('Room Cleaning', 'Cleaning', 'Cleaning service for rooms', 50.00),
    ('Airport Shuttle', 'Transportation', 'Shuttle service to/from the airport', 25.00),
    ('Room Service', 'Hospitality', 'In-room food and beverage service', 30.00),
    ('Wi-Fi', 'Technology', 'High-speed internet access', 10.00),
    ('Gym Access', 'Fitness', 'Access to the hotel gym', 15.00),
]

# Insert dummy data into the Service table
cursor.executemany("""
    INSERT INTO Service (ServiceID, ServiceName, ServiceType, Description, Cost)
    VALUES (NEWID(), ?, ?, ?, ?)
""", service_data)

# Commit the changes
myconnection.commit()

# Close the cursor and connection
cursor.close()
myconnection.close()
