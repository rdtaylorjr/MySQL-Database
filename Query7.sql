/*
 Computer Science 204: Database Programming
 Assignment: Creating & Manipulating a Database
 Russell Taylor
 7/9/2020
 Completed Using MySQL
*/

-- Query 7: Top borrowed genres for client born in years 1970-1980

SELECT `Genre`, COUNT(`Genre`) AS `Borrowed by Clients Born in 1970s`
  FROM `CS204`.`book`, `CS204`.`borrower`, `CS204`.`client`
  WHERE `book`.`BookID` = `borrower`.`BookID`
    AND `client`.`ClientID` = `borrower`.`ClientID`
    AND `ClientDOB` BETWEEN 1970 AND 1980
  GROUP BY `Genre`
  ORDER BY `Borrowed by Clients Born in 1970s` DESC;

/*
 Purpose and Steps (Query 7)

 First, Genre is selected from the book table. The second column is a COUNT() of the number of times a book with that genre was borrowed. The WHERE statement identifies the primary and foreign keys, then limits the selection to dates of birth between 1970-1980. GROUP BY displays the count of borrows for each genre. ORDER BY sorts the records in descending order by count.

 Result (Query 7)

 Genre	Borrowed by Clients Born in 1970s
 Science	24
 Fiction	16
 Well being	15
 Humor	5
 Society	4
 History	3
 Law	3
 Children	3
 Literature	3

*/
