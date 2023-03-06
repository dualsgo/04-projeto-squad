SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
-- -----------------------------------------------------
-- Schema db_gameofthrones
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_gameofthrones` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `db_gameofthrones` ;

-- -----------------------------------------------------
-- Table `db_gameofthrones`.`characters_v4`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_gameofthrones`.`characters_v4` (
  `People` TEXT NULL DEFAULT NULL,
  `Actor/ess` TEXT NULL DEFAULT NULL,
  `Episodes_appeared` INT NULL DEFAULT NULL,
  `First_appearance` INT NULL DEFAULT NULL,
  `Last_appearance` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `db_gameofthrones`.`got_episodes_v4`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_gameofthrones`.`got_episodes_v4` (
  `Season` INT NULL DEFAULT NULL,
  `Episode` INT NULL DEFAULT NULL,
  `Title` TEXT NULL DEFAULT NULL,
  `Release_date` TEXT NULL DEFAULT NULL,
  `Rating` DOUBLE NULL DEFAULT NULL,
  `Votes` INT NULL DEFAULT NULL,
  `Summary` TEXT NULL DEFAULT NULL,
  `Writer_1` TEXT NULL DEFAULT NULL,
  `Writer_2` TEXT NULL DEFAULT NULL,
  `Star_1` TEXT NULL DEFAULT NULL,
  `Star_2` TEXT NULL DEFAULT NULL,
  `Star_3` TEXT NULL DEFAULT NULL,
  `Users_reviews` INT NULL DEFAULT NULL,
  `Critics_reviews` INT NULL DEFAULT NULL,
  `US_Viewers` DOUBLE NULL DEFAULT NULL,
  `Duration` INT NULL DEFAULT NULL,
  `Director` TEXT NULL DEFAULT NULL,
  `Budget_estimate` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `db_gameofthrones`.`houses_v1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_gameofthrones`.`houses_v1` (
  `House_name` TEXT NULL DEFAULT NULL,
  `Region` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
