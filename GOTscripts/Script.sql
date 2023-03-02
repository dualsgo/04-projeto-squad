-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema db_gameofthrone
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_gameofthrone
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_gameofthrone` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `db_gameofthrone` ;

-- -----------------------------------------------------
-- Table `db_gameofthrone`.`casas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_gameofthrone`.`casas` (
  `House_name` TEXT NOT NULL,
  `Region` TEXT NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `db_gameofthrone`.`episodios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_gameofthrone`.`episodios` (
  `Season` INT NOT NULL,
  `Episode` INT NOT NULL,
  `Title` TEXT NOT NULL,
  `Release_date` TEXT NOT NULL,
  `Rating` FLOAT NOT NULL,
  `Votes` INT NOT NULL,
  `Summary` TEXT NOT NULL,
  `Writer_1` TEXT NOT NULL,
  `Writer_2` TEXT NOT NULL,
  `Star_1` TEXT NOT NULL,
  `Star_2` TEXT NOT NULL,
  `Star_3` TEXT NOT NULL,
  `Users_reviews` INT NOT NULL,
  `Critics_reviews` INT NOT NULL,
  `US_Viewers` DECIMAL NOT NULL,
  `Duration` INT NOT NULL,
  `Director` TEXT NOT NULL,
  PRIMARY KEY (`Episode`, `Season`),
  INDEX `fk_episodios_episodios1_idx` (`Season` ASC) VISIBLE,
  CONSTRAINT `fk_episodios_episodios1`
    FOREIGN KEY (`Season`)
    REFERENCES `db_gameofthrone`.`episodios` (`Episode`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `db_gameofthrone`.`personagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_gameofthrone`.`personagens` (
  `Character_id` INT NOT NULL,
  `Character` TEXT NOT NULL,
  `Actor/ess` TEXT NOT NULL,
  `Episodes_appeared` INT NOT NULL,
  `First_appearance` INT NOT NULL,
  `Last_appearance` INT NOT NULL,
  PRIMARY KEY (`Character_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
