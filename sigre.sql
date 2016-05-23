SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `sigre` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `sigre` ;

-- -----------------------------------------------------
-- Table `sigre`.`Departamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sigre`.`Departamento` (
  `idDepartamento` INT NOT NULL AUTO_INCREMENT,
  `departamento` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idDepartamento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sigre`.`Academia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sigre`.`Academia` (
  `idAcademia` INT NOT NULL AUTO_INCREMENT,
  `academia` VARCHAR(50) NOT NULL,
  `Departamento_idDepartamento` INT NOT NULL,
  PRIMARY KEY (`idAcademia`),
  INDEX `fk_Academia_Departamento1_idx` (`Departamento_idDepartamento` ASC),
  CONSTRAINT `fk_Academia_Departamento1`
    FOREIGN KEY (`Departamento_idDepartamento`)
    REFERENCES `sigre`.`Departamento` (`idDepartamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sigre`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sigre`.`Usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `tipo` INT NOT NULL,
  `nombre` VARCHAR(20) NOT NULL,
  `apellidoP` VARCHAR(20) NOT NULL,
  `apellidoM` VARCHAR(20) NOT NULL,
  `cel` VARCHAR(15) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idUsuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sigre`.`Materia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sigre`.`Materia` (
  `idMateria` INT NOT NULL AUTO_INCREMENT,
  `materia` VARCHAR(45) NOT NULL,
  `nivel` INT NOT NULL,
  `Academia_idAcademia` INT NOT NULL,
  PRIMARY KEY (`idMateria`),
  INDEX `fk_Materia_Academia1_idx` (`Academia_idAcademia` ASC),
  CONSTRAINT `fk_Materia_Academia1`
    FOREIGN KEY (`Academia_idAcademia`)
    REFERENCES `sigre`.`Academia` (`idAcademia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sigre`.`Alumno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sigre`.`Alumno` (
  `idAlumno` INT NOT NULL AUTO_INCREMENT,
  `boleta` VARCHAR(10) NOT NULL,
  `Usuario_idUsuario` INT NOT NULL,
  PRIMARY KEY (`idAlumno`),
  INDEX `fk_Alumno_Usuario1_idx` (`Usuario_idUsuario` ASC),
  CONSTRAINT `fk_Alumno_Usuario1`
    FOREIGN KEY (`Usuario_idUsuario`)
    REFERENCES `sigre`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sigre`.`Profesor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sigre`.`Profesor` (
  `idProfesor` INT NOT NULL AUTO_INCREMENT,
  `pass` VARCHAR(100) NOT NULL,
  `Usuario_idUsuario` INT NOT NULL,
  PRIMARY KEY (`idProfesor`),
  INDEX `fk_Profesor_Usuario1_idx` (`Usuario_idUsuario` ASC),
  CONSTRAINT `fk_Profesor_Usuario1`
    FOREIGN KEY (`Usuario_idUsuario`)
    REFERENCES `sigre`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sigre`.`Profesor_has_Materia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sigre`.`Profesor_has_Materia` (
  `Profesor_idProfesor` INT NOT NULL,
  `Materia_idMateria` INT NOT NULL,
  PRIMARY KEY (`Profesor_idProfesor`, `Materia_idMateria`),
  INDEX `fk_Profesor_has_Materia1_Materia1_idx` (`Materia_idMateria` ASC),
  INDEX `fk_Profesor_has_Materia1_Profesor1_idx` (`Profesor_idProfesor` ASC),
  CONSTRAINT `fk_Profesor_has_Materia1_Profesor1`
    FOREIGN KEY (`Profesor_idProfesor`)
    REFERENCES `sigre`.`Profesor` (`idProfesor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Profesor_has_Materia1_Materia1`
    FOREIGN KEY (`Materia_idMateria`)
    REFERENCES `sigre`.`Materia` (`idMateria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sigre`.`Cita`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sigre`.`Cita` (
  `idCita` INT NOT NULL AUTO_INCREMENT,
  `fecha` DATE NOT NULL,
  `estatus` VARCHAR(15) NOT NULL,
  `motivos` VARCHAR(250) NOT NULL,
  `Alumno_idAlumno` INT NOT NULL,
  PRIMARY KEY (`idCita`),
  INDEX `fk_Cita_Alumno1_idx` (`Alumno_idAlumno` ASC),
  CONSTRAINT `fk_Cita_Alumno1`
    FOREIGN KEY (`Alumno_idAlumno`)
    REFERENCES `sigre`.`Alumno` (`idAlumno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sigre`.`Examen`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sigre`.`Examen` (
  `idExamen` INT NOT NULL AUTO_INCREMENT,
  `fecha` DATETIME NOT NULL,
  `Cita_idCita` INT NOT NULL,
  `Materia_idMateria` INT NOT NULL,
  PRIMARY KEY (`idExamen`),
  INDEX `fk_Examen_Cita1_idx` (`Cita_idCita` ASC),
  INDEX `fk_Examen_Materia1_idx` (`Materia_idMateria` ASC),
  CONSTRAINT `fk_Examen_Cita1`
    FOREIGN KEY (`Cita_idCita`)
    REFERENCES `sigre`.`Cita` (`idCita`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Examen_Materia1`
    FOREIGN KEY (`Materia_idMateria`)
    REFERENCES `sigre`.`Materia` (`idMateria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sigre`.`Profesor_has_Materia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sigre`.`Profesor_has_Materia` (
  `Profesor_idProfesor` INT NOT NULL,
  `Materia_idMateria` INT NOT NULL,
  PRIMARY KEY (`Profesor_idProfesor`, `Materia_idMateria`),
  INDEX `fk_Profesor_has_Materia1_Materia1_idx` (`Materia_idMateria` ASC),
  INDEX `fk_Profesor_has_Materia1_Profesor1_idx` (`Profesor_idProfesor` ASC),
  CONSTRAINT `fk_Profesor_has_Materia1_Profesor1`
    FOREIGN KEY (`Profesor_idProfesor`)
    REFERENCES `sigre`.`Profesor` (`idProfesor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Profesor_has_Materia1_Materia1`
    FOREIGN KEY (`Materia_idMateria`)
    REFERENCES `sigre`.`Materia` (`idMateria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sigre`.`Cita_has_Profesor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sigre`.`Cita_has_Profesor` (
  `Cita_idCita` INT NOT NULL,
  `Profesor_idProfesor` INT NOT NULL,
  PRIMARY KEY (`Cita_idCita`, `Profesor_idProfesor`),
  INDEX `fk_Cita_has_Profesor_Profesor1_idx` (`Profesor_idProfesor` ASC),
  INDEX `fk_Cita_has_Profesor_Cita1_idx` (`Cita_idCita` ASC),
  CONSTRAINT `fk_Cita_has_Profesor_Cita1`
    FOREIGN KEY (`Cita_idCita`)
    REFERENCES `sigre`.`Cita` (`idCita`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cita_has_Profesor_Profesor1`
    FOREIGN KEY (`Profesor_idProfesor`)
    REFERENCES `sigre`.`Profesor` (`idProfesor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
