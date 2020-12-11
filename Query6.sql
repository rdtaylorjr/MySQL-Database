/*
 Computer Science 204: Database Programming
 Assignment: Creating & Manipulating a Database
 Russell Taylor
 7/9/2020
 Completed Using MySQL
*/

-- Query 6: The book that was most borrowed during the years 2015-2017

SELECT `BookTitle`, COUNT(`book`.`BookID`) AS `Borrowed in 2015-2017`
  FROM `CS204`.`book`, `CS204`.`borrower`
  WHERE `book`.`BookID` = `borrower`.`BookID`
    AND YEAR(`BorrowDate`) BETWEEN 2015 AND 2017
  GROUP BY `book`.`BookID`
  ORDER BY `Borrowed in 2015-2017` DESC LIMIT 1;

/*
 Purpose and Steps (Query 6)

 First, BookTitle is selected from the book table. The second column is a COUNT() of each time a BookID was borrowed. The WHERE statement identifies the primary and foreign keys, and limits the selected records to BorrowDates between 2015-2017. GROUP BY displays the count of borrows for each book title. ORDER BY sorts the records by count in descending order and displays only the first one.

 Result (Query 6)

 BookTitle	Borrowed in 2015-2017
 The perfect match	13

*/
