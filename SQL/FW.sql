-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`CP`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`CP` ;

CREATE TABLE IF NOT EXISTS `mydb`.`CP` (
  `id` INT NOT NULL,
  `codigo` CHAR(8) NOT NULL,
  `localidade` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Cliente` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Cliente` (
  `nif` INT NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `password` VARCHAR(50) NOT NULL,
  `nome` VARCHAR(50) NOT NULL,
  `CP_id` INT NOT NULL,
  PRIMARY KEY (`nif`),
  INDEX `fk_Cliente_CP1_idx` (`CP_id` ASC) VISIBLE,
  CONSTRAINT `fk_Cliente_CP1`
    FOREIGN KEY (`CP_id`)
    REFERENCES `mydb`.`CP` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Contacto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Contacto` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Contacto` (
  `numero` INT NOT NULL,
  `Cliente_nif` INT NOT NULL,
  PRIMARY KEY (`numero`),
  INDEX `fk_Contacto_Cliente1_idx` (`Cliente_nif` ASC) VISIBLE,
  CONSTRAINT `fk_Contacto_Cliente1`
    FOREIGN KEY (`Cliente_nif`)
    REFERENCES `mydb`.`Cliente` (`nif`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Producao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Producao` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Producao` (
  `id` INT NOT NULL,
  `direcao` VARCHAR(45) NOT NULL,
  `produtora` VARCHAR(45) NOT NULL,
  `emissora` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Descricao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Descricao` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Descricao` (
  `id` INT NOT NULL,
  `classificacaoEtaria` VARCHAR(4) NOT NULL,
  `duracaoFilme` TIME NULL,
  `classificacao` DECIMAL(8,2) NOT NULL,
  `sinopse` TEXT NOT NULL,
  `dataLancamento` DATE NOT NULL,
  `nrTemporadas` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Conteudo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Conteudo` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Conteudo` (
  `id` INT NOT NULL,
  `titulo` VARCHAR(45) NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `Producao_id` INT NOT NULL,
  `precoCompra` DECIMAL(6,2) NOT NULL,
  `PrecoAluguer` DECIMAL(6,2) NOT NULL,
  `Descricao_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Conteudo_Producao1_idx` (`Producao_id` ASC) VISIBLE,
  INDEX `fk_Conteudo_Descricao1_idx` (`Descricao_id` ASC) VISIBLE,
  CONSTRAINT `fk_Conteudo_Producao1`
    FOREIGN KEY (`Producao_id`)
    REFERENCES `mydb`.`Producao` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Conteudo_Descricao1`
    FOREIGN KEY (`Descricao_id`)
    REFERENCES `mydb`.`Descricao` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Aquisicao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Aquisicao` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Aquisicao` (
  `Conteudo_id` INT NOT NULL,
  `Cliente_nif` INT NOT NULL,
  `id` INT NOT NULL,
  `data` DATE NOT NULL,
  `tipoAquisicao` VARCHAR(45) NOT NULL,
  `nrDias` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Conteudo_has_Cliente_Cliente1_idx` (`Cliente_nif` ASC) VISIBLE,
  INDEX `fk_Conteudo_has_Cliente_Conteudo1_idx` (`Conteudo_id` ASC) VISIBLE,
  CONSTRAINT `fk_Conteudo_has_Cliente_Conteudo1`
    FOREIGN KEY (`Conteudo_id`)
    REFERENCES `mydb`.`Conteudo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Conteudo_has_Cliente_Cliente1`
    FOREIGN KEY (`Cliente_nif`)
    REFERENCES `mydb`.`Cliente` (`nif`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
