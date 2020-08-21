/*
 Computer Science 204: Database Programming
 Assignment: Creating & Manipulating a Database
 Russell Taylor
 7/9/2020
 Completed Using MySQL
*/


-- Create the Author table and set AuthorID as the primary key

CREATE TABLE `CS204`.`author` (
  `AuthorID` INT NOT NULL AUTO_INCREMENT,
  `AuthorFirstName` VARCHAR(45) NOT NULL,
  `AuthorLastName` VARCHAR(45) NOT NULL,
  `AuthorNationality` VARCHAR(45) NOT NULL,
  `AuthorDOB` YEAR NULL,
  PRIMARY KEY (`AuthorID`));


-- Create the Book table, set BookID as the primary key, and set BookAuthor as a foreign key

CREATE TABLE `CS204`.`book` (
  `BookID` INT NOT NULL AUTO_INCREMENT,
  `BookTitle` VARCHAR(45) NOT NULL,
  `BookAuthor` INT NOT NULL,
  `Genre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`BookID`),
  INDEX `BookAuthor_idx` (`BookAuthor` ASC) VISIBLE,
  CONSTRAINT `BookAuthor`
    FOREIGN KEY (`BookAuthor`)
    REFERENCES `CS204`.`author` (`AuthorID`));


-- Create the Client table and set ClientID as the primary key

CREATE TABLE `CS204`.`client` (
  `ClientID` INT NOT NULL AUTO_INCREMENT,
  `ClientFirstName` VARCHAR(45) NOT NULL,
  `ClientLastName` VARCHAR(45) NOT NULL,
  `ClientDOB` YEAR NOT NULL,
  `Occupation` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ClientID`));


-- Create the Borrower table, set BorrowerID as the primary key, and set ClientID and Book ID as foreign keys

CREATE TABLE `CS204`.`borrower` (
  `BorrowID` INT NOT NULL AUTO_INCREMENT,
  `ClientID` INT NOT NULL,
  `BookID` INT NOT NULL,
  `BorrowDate` DATE NOT NULL,
  PRIMARY KEY (`BorrowID`),
  INDEX `ClientID_idx` (`ClientID` ASC) VISIBLE,
  INDEX `BookID_idx` (`BookID` ASC) VISIBLE,
  CONSTRAINT `ClientID`
    FOREIGN KEY (`ClientID`)
    REFERENCES `CS204`.`client` (`ClientID`),
  CONSTRAINT `BookID`
    FOREIGN KEY (`BookID`)
    REFERENCES `CS204`.`book` (`BookID`));

/*
 Columns are created with the appropriate data types, all columns are set to NOT NULL except AuthorDOB which only contains NULL values in the given set of data. Primary keys are all set to AUTO_INCREMENT, so no values will be manually inserted into those columns in the next step. Foreign keys are set where appropriate.
*/
