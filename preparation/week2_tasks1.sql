CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `ordersview` AS
    SELECT 
        `orders`.`orders_id` AS `orders_id`,
        `orders`.`quantity` AS `quantity`,
        `orders`.`total_cost` AS `total_cost`
    FROM
        `orders`
    WHERE
        (`orders`.`quantity` > 2)