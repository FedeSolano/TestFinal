-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema FedeTestFinal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema FedeTestFinal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `FedeTestFinal` DEFAULT CHARACTER SET utf8 ;
USE `FedeTestFinal` ;

-- -----------------------------------------------------
-- Table `FedeTestFinal`.`utilisateur`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FedeTestFinal`.`utilisateur` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `firstname` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `FedeTestFinal`.`article`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FedeTestFinal`.`article` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(80) NULL,
  `text` TEXT NULL,
  `date` DATETIME NULL,
  `utilisateurid` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_article_utilisateur_idx` (`utilisateurid` ASC),
  CONSTRAINT `fk_article_utilisateur`
    FOREIGN KEY (`utilisateurid`)
    REFERENCES `FedeTestFinal`.`utilisateur` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `FedeTestFinal`.`section`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FedeTestFinal`.`section` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `intitule` VARCHAR(60) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `FedeTestFinal`.`article_has_section`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FedeTestFinal`.`article_has_section` (
  `article_id` INT UNSIGNED NOT NULL,
  `section_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`article_id`, `section_id`),
  INDEX `fk_article_has_section_section1_idx` (`section_id` ASC),
  INDEX `fk_article_has_section_article1_idx` (`article_id` ASC),
  CONSTRAINT `fk_article_has_section_article1`
    FOREIGN KEY (`article_id`)
    REFERENCES `FedeTestFinal`.`article` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_article_has_section_section1`
    FOREIGN KEY (`section_id`)
    REFERENCES `FedeTestFinal`.`section` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
