/*
 Computer Science 204: Database Programming
 Assignment: Creating & Manipulating a Database
 Russell Taylor
 7/9/2020
 Completed Using MySQL
*/

-- Query 12: Average number of borrows by age

  SELECT YEAR(CURDATE()) - `ClientDOB` AS `Age`, AVG (`Count`) AS `Average Borrows`
  FROM `CS204`.`client` USE INDEX (`ClientID_UNIQUE`, `ClientDOB_index`),
   (SELECT `ClientID`, COUNT(`ClientID`) AS `Count`
      FROM `CS204`.`borrower`
      GROUP BY `ClientID`) AS `counts`
  WHERE `client`.`ClientID` = `counts`.`ClientID`
  GROUP BY `Age`;

/*
 Purpose and Steps (Query 12)

 First, the age of each client is calculated and selected (as in Query 1) and given the alias 'Age'. Next, the average number of borrows for clients of each age is calculated. A subquery selects ClientID from the borrower table, and calculates the number of times each ClientID borrowed a book. The result of a subquery is passed to AVG() and then assigned the alias 'Average Borrows'. The Average Borrows are grouped by each Age.
 The indexes created in Query 1 are used for faster searching.

 Result (Query 12)

 Age	Average Borrows
 14	5.5000
 10	2.3333
 37	3.7500
 15	4.5000
 39	2.0000
 47	3.6667
 46	3.2500
 36	5.5000
 22	2.0000
 60	3.6667
 16	3.0000
 41	4.3333
 34	3.0000
 30	5.5000
 24	2.0000
 18	2.0000
 21	3.6667
 58	3.0000
 53	3.0000
 52	4.0000
 19	4.5000
 45	2.6667
 44	3.5000
 57	5.0000
 38	3.0000
 33	2.0000
 13	5.0000
 25	4.5000
 12	6.0000
 42	5.5000
 26	10.0000
 28	3.0000
 35	4.0000
 40	1.0000
 17	5.0000
 43	3.0000
 50	4.5000
 54	1.0000

*/
