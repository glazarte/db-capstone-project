-- Insert dummy data into Customer
INSERT INTO `mydb`.`customer` (`name`, `contact_details`)
VALUES
('John Doe', 'john.doe@example.com'),
('Jane Doe', 'jane.doe@example.com'),
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com'),
('Charlie', 'charlie@example.com'),
('David', 'david@example.com'),
('Emily', 'emily@example.com'),
('Frank', 'frank@example.com'),
('Ale', 'ale@example.com'),
('Kouichi', 'kouichi@example.com');

-- Insert dummy data into StaffInformation
INSERT INTO `mydb`.`staffInformation` (`staffinformation_id`, `name`, `role`, `salary`)
VALUES
(1, 'Sarah', 'Manager', 75000),
(2, 'Tom', 'Waiter', 40000),
(3, 'Linda', 'Chef', 43000),
(4, 'Robert', 'Cashier', 34000),
(5, 'Daniel', 'Waiter', 36000),
(6, 'Susan', 'Hostess', 28000),
(7, 'Chris', 'Manager', 60000),
(8, 'Jessica', 'Chef', 38000),
(9, 'Brian', 'Waiter', 28000);

-- Insert dummy data into Menu
INSERT INTO `mydb`.`menu` (`menuname`, `type`, `price`)
VALUES
('Cheese Burger', 'Main', 10),
('Veggie Burger', 'Main', 9),
('French Fries', 'Side', 3),
('Caesar Salad', 'Main', 8),
('Chicken Wings', 'Appetizer', 6),
('Coca Cola', 'Drink', 2),
('Pasta', 'Main', 11),
('Rice', 'Side', 4),
('Margarita', 'Drink', 5),
('Ice Cream', 'Dessert', 4);

-- Insert dummy data into bookings
INSERT INTO `mydb`.`bookings` (`customer_id`, `staffinformation_staffinformation_id`, `date`, `table_number`)
VALUES
(1, 1, '2024-06-01 12:00:00', 10),
(2, 2, '2024-06-01 12:30:00', 12),
(3, 3, '2024-06-02 13:00:00', 14),
(4, 4, '2024-06-02 14:00:00', 16),
(5, 5, '2024-06-03 15:00:00', 18),
(6, 6, '2024-06-03 16:00:00', 20),
(7, 7, '2024-06-04 17:00:00', 22),
(8, 8, '2024-06-04 18:00:00', 24),
(9, 9, '2024-06-05 19:00:00', 26),
(10, 10, '2024-06-05 20:00:00', 28);

-- Insert dummy data into orders
INSERT INTO `mydb`.`orders` (`customer_customer_id`, `menu_id`, `staffinformation_staffinformation_id`,`bookings_bookings_id`, `order_date`, `quantity`, `total_cost`)
VALUES
(1, 1, 1,1, '2024-06-01 12:00:00', 2, 171),
(2, 2, 2,2, '2024-06-01 12:30:00', 1, 174),
(3, 3, 3,3, '2024-06-02 13:00:00', 3, 358),
(4, 4, 4,4, '2024-06-02 14:00:00', 1, 265),
(5, 5, 5,5, '2024-06-03 15:00:00', 4, 252),
(6, 6, 6,6, '2024-06-03 16:00:00', 2, 465),
(7, 7, 7,7, '2024-06-04 17:00:00', 1, 65),
(8, 8, 8,8, '2024-06-04 18:00:00', 2, 437),
(9, 9, 9,9, '2024-06-05 19:00:00', 3, 484),
(10, 10, 10,10, '2024-06-05 20:00:00', 1, 111);

-- Insert dummy data into orderdeliverystatus
INSERT INTO `mydb`.`orderdeliverystatus` (`orderdeliverystatus_id`, `delivery_date`, `status`)
VALUES
(1, '2024-06-01 12:15:00', 'Delivered'),
(2, '2024-06-01 12:45:00', 'Preparing'),
(3, '2024-06-02 13:15:00', 'Preparing'),
(4, '2024-06-02 14:15:00', 'Out for delivery'),
(5, '2024-06-03 15:15:00', 'Out for delivery'),
(6, '2024-06-03 16:15:00', 'Delivered'),
(7, '2024-06-04 17:15:00', 'Preparing'),
(8, '2024-06-04 18:15:00', 'Delivered'),
(9, '2024-06-05 19:15:00', 'Delivered'),
(10, '2024-06-05 20:15:00', 'Delivered');
