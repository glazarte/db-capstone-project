import mysql.connector as connector

# Establish connection
connection = connector.connect(
    user="root",
    password="GustavoSQL9586!",
    host="localhost",
    database="mydb"
)

# Create cursor
cursor = connection.cursor()

# Call the stored procedure
cursor.callproc('GetMaxQuantity')

# Fetch the result
for result in cursor.stored_results():
    max_quantity = result.fetchone()
    print("Maximum Quantity in an Order:", max_quantity[0])

# Close cursor and connection
cursor.close()
connection.close()
