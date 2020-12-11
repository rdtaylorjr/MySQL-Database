/*
 Computer Science 204: Database Programming
 Assignment: Creating & Manipulating a Database
 Russell Taylor
 7/9/2020
 Completed Using MySQL
*/

-- Query 8: Top 5 occupations that borrowed the most in 2016

SELECT `Occupation`, COUNT(`Occupation`) AS `Borrowed in 2016`
  FROM `CS204`.`client`, `CS204`.`borrower`
  WHERE `client`.`ClientID` = `borrower`.`ClientID`
    AND YEAR(`BorrowDate`) = 2016
  GROUP BY `Occupation`
  ORDER BY `Borrowed in 2016` DESC LIMIT 5;

/*
 Purpose and Steps (Query 8)

 First, Occupation is selected from the client table. The second column is a COUNT() of the number of times a book is borrowed by a client with that occupation. The WHERE statement identifies the primary and foreign keys, and limits the selection to records with a BorrowDate of 2016. GROUP BY groups the counts by each occupation. ORDER BY sorts the records in descending order by count and displays only the first 5.

 Result (Query 8)

 Occupation	Borrowed in 2016
 Student	32
 Bus Driver	8
 Computer Programmer	6
 Dentist	6
 Firefighter	5

*/
