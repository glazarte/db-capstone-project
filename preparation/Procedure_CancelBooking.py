import mysql.connector
from mysql.connector import Error

def create_connection():
    """Create a database connection and return the connection object."""
    try:
        connection = mysql.connector.connect(
            host='localhost',       
            database='mydb', 
            user='root',  
            password='GustavoSQL9586!' 
        )
        if connection.is_connected():
            print("Connected to MySQL database")
            return connection
    except Error as e:
        print(f"Error: '{e}'")
        return None

def close_connection(connection):
    """Close the database connection."""
    if connection.is_connected():
        connection.close()
        print("Connection closed")

def cancel_booking(booking_id):
    connection = create_connection()
    if connection is None:
        return

    try:
        cursor = connection.cursor()
        cursor.callproc('CancelBooking', [booking_id])

        # Commit the transaction
        connection.commit()

        print(f"Booking with ID {booking_id} has been cancelled.")
    except Error as e:
        print(f"Error: '{e}'")
    finally:
        cursor.close()
        close_connection(connection)

# Example usage:
if __name__ == "__main__":
    # Cancel a booking with a specific BookingID
    cancel_booking(1)
