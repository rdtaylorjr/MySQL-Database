/*
 Computer Science 204: Database Programming
 Assignment: Creating & Manipulating a Database
 Russell Taylor
 7/9/2020
 Completed Using MySQL
*/

-- Query 10: Create a VIEW and display the titles that were borrowed by at least 20% of clients

CREATE VIEW `CS204`.`query10view` AS
  SELECT `book`.`BookID`, `BookTitle`,
  COUNT(DISTINCT `ClientID`) AS `Distinct Borrowers`, COUNT(DISTINCT `ClientID`) /
     (SELECT COUNT(`ClientID`)
	  FROM `CS204`.`client`) * 100 AS `% of Clients`
  FROM `CS204`.`book`, `CS204`.`borrower`
  WHERE `book`.`BookID` = `borrower`.`BookID`
  GROUP BY `book`.`BookID`, `BookTitle`;

SELECT `BookTitle`, `% of Clients`
  FROM `CS204`.`query10view`
  WHERE `% of Clients` > 20;

/*
 Purpose and Steps (Query 10)

 Most of the work in this query is done in the creation of the VIEW. The VIEW displays the number of distinct borrowers for each book title, and also the percentage of total clients represented by those distinct borrowers. The SELECT statement then displays only the book titles where that percentage is over 20%.
 To create the VIEW, first BookID is selected from the book table to serve as a field of unique values for each record in the VIEW. Next, BookTitle is selected from the book table. The third column is given the alias 'Distinct Borrowers' and consists of counts of distinct ClientIDs that borrowed a particular book. The fourth column calculates the '% of Clients' by dividing the count of distinct borrowers by the total number of clients then multiplying by 100. In order to retrieve the total number of clients, a subquery is used that returns a count of the ClientIDs in the client table. The counts of distinct borrowers for each book are grouped by the BookID and BookTitle.
 The SELECT statement selects BookTitle and '% of Clients' from the VIEW, but only includes records where '% of Clients' is greater than 20.

 View (Query 10)

 BookID	BookTitle	Distinct Borrowers	% of Clients
 1	Build your database system	10	12.5000
 2	The red wall	11	13.7500
 3	The perfect match	14	17.5000
 4	Digital Logic	11	13.7500
 5	How to be a great lawyer	9	11.2500
 6	Manage successful negotiations	3	3.7500
 7	Pollution today	7	8.7500
 8	A gray park	9	11.2500
 9	How to be rich in one year	10	12.5000
 10	Their bright fate	6	7.5000
 11	Black lines	6	7.5000
 12	History of theater	11	13.7500
 13	Electrical transformers	17	21.2500
 14	Build your big data system	8	10.0000
 15	Right and left	10	12.5000
 16	Programming using Python	12	15.0000
 17	Computer networks	11	13.7500
 18	Performance evaluation	11	13.7500
 19	Daily exercise	9	11.2500
 20	The silver uniform	6	7.5000
 21	Industrial revolution	11	13.7500
 22	Green nature	12	15.0000
 23	Perfect football	5	6.2500
 24	The chocolate love	9	11.2500
 25	Director and leader	8	10.0000
 26	Play football every week	5	6.2500
 27	Maya the bee	4	5.0000
 28	Perfect rugby	9	11.2500
 29	The end	5	6.2500
 30	Computer security	10	12.5000
 31	Participate	6	7.5000
 32	Positive figures	12	15.0000

 Result (Query 10)

 BookTitle	% of Clients
 Electrical transformers	21.2500

*/
