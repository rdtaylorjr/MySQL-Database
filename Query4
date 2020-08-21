/*
 Computer Science 204: Database Programming
 Assignment: Creating & Manipulating a Database
 Russell Taylor
 7/9/2020
 Completed Using MySQL
*/

-- Query 4: First and last names of the top 5 authors clients borrowed in 2017

SELECT `AuthorFirstName`, `AuthorLastName`, COUNT(`AuthorFirstName` AND `AuthorLastName`) AS `Borrowed in 2017`
  FROM `CS204`.`author`, `CS204`.`book`, `CS204`.`borrower`
  WHERE `AuthorID` = `BookAuthor`
    AND `book`.`BookID` = `borrower`.`BookID`
    AND YEAR(`BorrowDate`) = 2017
  GROUP BY `AuthorFirstName`, `AuthorLastName`
  ORDER BY `Borrowed in 2017` DESC LIMIT 5;

/*
 Purpose and Steps (Query 4)

 First, select the columns for the authors' first and last names from the author table. The third column selected uses COUNT() to returns the number of times each combination of first and last name occurs. An alias is assigned to the third column. Foreign keys allow us to use associated records in three different tables: author, book, and borrower. The WHERE statement ensures that primary keys and foreign keys are equal, then limits the selected records to only those with a BorrowDate of 2017. GROUP BY displays the number of times each name occurs in the records. Finally, ORDER BY sorts the records from highest to lowest count (descending) and limits the number of records selected to the first 5, which are the top 5 authors clients borrowed in 2017.

 Result (Query 4)

 AuthorFirstName	AuthorLastName	Borrowed in 2017
 Sofia	Smith	7
 Elena	Martin	7
 Logan	Moore	7
 Maria	Brown	6
 Zoe	Roy	5

*/
