import mysql.connector as connector

def manage_booking(action, booking_id=None, customer_id=None, booking_date=None, table_number=None, staff=None):
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
    cursor.callproc('ManageBooking', [action, booking_id, customer_id, booking_date, table_number, staff])

    # Commit the transaction if INSERT or UPDATE
    if action in ['INSERT', 'UPDATE']:
        connection.commit()

    # Close cursor and connection
    cursor.close()
    connection.close()

# Example usage:

# Insert a new booking
manage_booking('INSERT', customer_id=1, booking_date='2024-07-01', table_number=4, staff='1')

# Update an existing booking
manage_booking('UPDATE', booking_id=2, customer_id=1, booking_date='2024-07-02', table_number=3, staff='2')

# Delete a booking
manage_booking('DELETE', booking_id=3)
