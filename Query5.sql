/*
 Computer Science 204: Database Programming
 Assignment: Creating & Manipulating a Database
 Russell Taylor
 7/9/2020
 Completed Using MySQL
*/

-- Query 5: Least 5 author nationalities clients borrowed during the years 2015-2017

SELECT `AuthorNationality`, COUNT(`AuthorNationality`) AS `Borrowed in 2015-2017`
  FROM `CS204`.`author`, `CS204`.`book`, `CS204`.`borrower`
  WHERE `AuthorID` = `BookAuthor`
    AND `book`.`BookID` = `borrower`.`BookID`
    AND YEAR(`BorrowDate`) BETWEEN 2015 AND 2017
  GROUP BY `AuthorNationality`
  ORDER BY `Borrowed in 2015-2017` LIMIT 5;

/*
 Purpose and Steps (Query 5)

 First, select AuthorNationality from the author table. The second column selected contains a COUNT() of each time a book by an author of that nationality is borrowed. GROUP BY displays the count for each nationality. The count column is assigned an alias. The WHERE statement specifies which primary and foreign keys to use, and limits the records to ones where the BorrowDate is between 2015-2017. Finally, ORDER BY sorts the nationalities in ascending order by count and displays only the first 5.

 Result (Query 5)

 AuthorNationality	Borrowed in 2015-2017
 Spain	3
 Great Britain	6
 China	7
 Brezil	18
 France	24

*/
