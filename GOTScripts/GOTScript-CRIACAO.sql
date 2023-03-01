-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema gameofthrones
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema gameofthrones
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gameofthrones` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `gameofthrones` ;

-- -----------------------------------------------------
-- Table `gameofthrones`.`casas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gameofthrones`.`casas` (
 `id` INT AUTO_INCREMENT,
  `Nome_casa` TEXT NULL DEFAULT NULL,
  `Regiao` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `gameofthrones`.`episodios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gameofthrones`.`episodios` (
`id` INT AUTO_INCREMENT,
  `Temporada` INT NULL DEFAULT NULL,
  `Episodio` INT NULL DEFAULT NULL,
  `Titulo` TEXT NULL DEFAULT NULL,
  `Data_exibicao` TEXT NULL DEFAULT NULL,
  `Nota` DOUBLE NULL DEFAULT NULL,
  `Votos` INT NULL DEFAULT NULL,
  `Sinopse` TEXT NULL DEFAULT NULL,
  `Roteirista1` TEXT NULL DEFAULT NULL,
  `Roteirista2` TEXT NULL DEFAULT NULL,
  `Estrelando1` TEXT NULL DEFAULT NULL,
  `Estrelando2` TEXT NULL DEFAULT NULL,
  `Estrelando3` TEXT NULL DEFAULT NULL,
  `Usuarios_avaliacao` INT NULL DEFAULT NULL,
  `Critica_avaliacao` INT NULL DEFAULT NULL,
  `EspectadoresEUA` DOUBLE NULL DEFAULT NULL,
  `Duracao` INT NULL DEFAULT NULL,
  `Diretor` TEXT NULL DEFAULT NULL,
  `Orcamento` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `gameofthrones`.`pesonagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gameofthrones`.`pesonagens` (
 `id` INT AUTO_INCREMENT,
  `Personagem` TEXT NULL DEFAULT NULL,
  `Ator/Atriz` TEXT NULL DEFAULT NULL,
  `Aparicoes` INT NULL DEFAULT NULL,
  `Primeira_aparicao` INT NULL DEFAULT NULL,
  `Ultima_aparicao` INT NULL DEFAULT NULL,
  INDEX `fk_pesonagens_casas_idx` (`Personagem` ASC) VISIBLE,
  CONSTRAINT `fk_pesonagens_casas`
    FOREIGN KEY (`Personagem`)
    REFERENCES `gameofthrones`.`casas` (`Nome_casa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
