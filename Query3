/*
 Computer Science 204: Database Programming
 Assignment: Creating & Manipulating a Database
 Russell Taylor
 7/9/2020
 Completed Using MySQL
*/

-- Query 3: First and last names of clients that borrowed books in March 2018

SELECT `ClientFirstName`, `ClientLastName`
  FROM `CS204`.`client` USE INDEX (`ClientID_UNIQUE`, `ClientName_index`)
  INNER JOIN `CS204`.`borrower`
    ON `client`.`ClientID` = `borrower`.`ClientID`
  WHERE MONTH(`BorrowDate`) = 3
    AND YEAR(`BorrowDate`) = 2018;

/*
 Purpose and Steps (Query 3)

 First, select the columns for the client's first and last names from the client table. An INNER JOIN is used to join these columns to the BorrowDate field in the borrower table. The primary key ClientID in the client table and the foreign key ClientID in the borrower table allow the relevant records in the two tables to be used together. The WHERE statement ensures that only records where the BorrowDate in the borrower table equals 3/2018 are selected. BorrowDate is in the format YYYY-MM-DD, so MONTH() is used to return only the month and YEAR() is used to return only the year. USE INDEX forces the use of the relevant indexes in the client table for faster searching.

 Result (Query 3)

 ClientFirstName	ClientLastName
 Gerard	Jackson
 Tyler	Baker
 Angelina	Rowe
 Marcia	Rowe
 Carson	Byrne
 Katy	Lloyd
 Alysha	Lambert
 Maia	Grant

*/
