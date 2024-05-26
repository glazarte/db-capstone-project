-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customer` (
  `customer_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `contact_details` VARCHAR(45) NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`staffinformation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`staffinformation` (
  `staffinformation_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `role` VARCHAR(45) NULL,
  `salary` DECIMAL(10) NULL,
  PRIMARY KEY (`staffinformation_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`bookings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`bookings` (
  `bookings_id` INT NOT NULL,
  `date` DATE NULL,
  `table_number` INT NULL,
  `staffinformation_staffinformation_id` INT NOT NULL,
  PRIMARY KEY (`bookings_id`),
  INDEX `fk_bookings_staffinformation_idx` (`staffinformation_staffinformation_id` ASC) VISIBLE,
  CONSTRAINT `fk_bookings_staffinformation`
    FOREIGN KEY (`staffinformation_staffinformation_id`)
    REFERENCES `mydb`.`staffinformation` (`staffinformation_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`orderdeliverystatus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`orderdeliverystatus` (
  `orderdeliverystatus_id` INT NOT NULL,
  `delivery_date` DATE NULL,
  `status` VARCHAR(45) NULL,
  PRIMARY KEY (`orderdeliverystatus_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`orders` (
  `orders_id` INT NOT NULL,
  `order_date` DATE NOT NULL,
  `quantity` VARCHAR(45) NULL,
  `total_cost` VARCHAR(45) NULL,
  `customer_customer_id` INT NOT NULL,
  `bookings_bookings_id` INT NOT NULL,
  `orderdeliverystatus_orderdeliverystatus_id` INT NOT NULL,
  `orderdeliverystatus_order_id` INT NOT NULL,
  PRIMARY KEY (`orders_id`),
  INDEX `fk_orders_customer1_idx` (`customer_customer_id` ASC) VISIBLE,
  INDEX `fk_orders_bookings1_idx` (`bookings_bookings_id` ASC) VISIBLE,
  INDEX `fk_orders_orderdeliverystatus1_idx` (`orderdeliverystatus_orderdeliverystatus_id` ASC, `orderdeliverystatus_order_id` ASC) VISIBLE,
  CONSTRAINT `fk_orders_customer1`
    FOREIGN KEY (`customer_customer_id`)
    REFERENCES `mydb`.`customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_bookings1`
    FOREIGN KEY (`bookings_bookings_id`)
    REFERENCES `mydb`.`bookings` (`bookings_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_orderdeliverystatus1`
    FOREIGN KEY (`orderdeliverystatus_orderdeliverystatus_id`)
    REFERENCES `mydb`.`orderdeliverystatus` (`orderdeliverystatus_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`menu` (
  `menu_id` INT NOT NULL,
  `cuisine` VARCHAR(45) NULL,
  `starter` VARCHAR(45) NULL,
  `course` VARCHAR(45) NULL,
  `drink` VARCHAR(45) NULL,
  `dessert` VARCHAR(45) NULL,
  `price` DECIMAL(10) NULL,
  `orders_orders_id` INT NOT NULL,
  `orders_booking_id` INT NOT NULL,
  `orders_staffinformation_id` INT NOT NULL,
  PRIMARY KEY (`menu_id`),
  INDEX `fk_menu_orders1_idx` (`orders_orders_id` ASC, `orders_booking_id` ASC, `orders_staffinformation_id` ASC) VISIBLE,
  CONSTRAINT `fk_menu_orders1`
    FOREIGN KEY (`orders_orders_id`)
    REFERENCES `mydb`.`orders` (`orders_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
