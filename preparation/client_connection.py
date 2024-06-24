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
