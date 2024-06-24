This work is for Little Lemon, a Database Engineer Capstone Coursera

# Little Lemon Restaurant Management System

## Project Description

This project is designed to manage the operations of the Little Lemon fast-food restaurant and is a part of the **Meta Database Engineer Certificate** course on Coursera. The project uses MySQL for database modeling and Tableau for data analysis. The `Preparation` folder contains all the initial files used to start working on this project.

## Entity-Relationship Diagram

Entity-Relationship Diagram: view the image ERDiagramModel.png

## Installation and Setup

To set up the database, do the following:

1. **Install MySQL**: Download and install MySQL on your machine if you haven't done so.

2. **Download SQL File**: Obtain the [LittleLemonDB.sql](./LittleLemonDB.sql) file from this repository.

3. **Import and Execute in MySQL Workbench**:
    - Open MySQL Workbench.
    - Navigate to `Server` > `Data Import`.
    - Choose `Import from Self-Contained File` and load the `LittleLemonDB.sql` file.
    - Click `Start Import` to both import and execute the SQL commands from the file.

Your database should now be set up and populated with tables and stored procedures.

## Stored Procedures

### GetMaxQuantity()
This stored procedure retrieves the maximum quantity of a specific item that has been ordered. It's useful for inventory management.

```sql
DELIMITER //

CREATE PROCEDURE GetMaxQuantity()
BEGIN
    SELECT MAX(Quantity) AS MaxQuantity
    FROM orders;
END //

DELIMITER ;
```

```sql
CALL GetMaxQuantity()
```


### Manage Booking()
This stored procedure updates the booking details in the database. 

```sql
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
```

### CancelBooking()
The CancelBooking stored procedure cancels or removes a specific booking by its bookings ID. I

```sql
DELIMITER //

CREATE PROCEDURE CancelBooking(IN bookings_id INT)
BEGIN
    DELETE FROM bookings WHERE BookingID = bookings_id;
END //

DELIMITER ;

```
```sql
CALL CancelBooking(5);
```

## Data Analysis with Tableau
A Tableau workbook has been created, containing various charts and dashboards to facilitate data analysis. The workbook is: 
LittleLemonTableau.twb

## Client with Jupyter Notebook
The client is: LittleLemonClient.ipynb
