import pyodbc
try:
    myconnection = pyodbc.connect(
        DSN='SQLserver',
        server='DESKTOP-AS4PUFE',
        database='Hotel Management System',
        driver='{ODBC Driver 18 for SQL Server}'
        # username='DESKTOP-AS4PUFE\\amr fathy',
        # password='*********',
    )

    print("Connection succeeded!")

    with open('table-set.sql', 'r') as file:
            BD_table = file.read()
    with open('data-set.sql', 'r') as file:
            BD_filling = file.read()

    cursor = myconnection.cursor()
    # cursor.execute(BD_table)
    cursor.execute(BD_filling)
    print("Query execution confirmed!")

except Exception as e:
    print(f"Error: {str(e)}")
finally:
    myconnection.commit()
    myconnection.close()
