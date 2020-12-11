/*
 Computer Science 204: Database Programming
 Assignment: Creating & Manipulating a Database
 Russell Taylor
 7/9/2020
 Completed Using MySQL
*/

-- Query 9: Average number of borrowed books by job title

SELECT `Occupation`, AVG (`Count`) AS `Average Borrowed`
  FROM `CS204`.`client`,
   (SELECT `ClientID`, COUNT(`ClientID`) AS `Count`
	  FROM `CS204`.`borrower`
	  GROUP BY `ClientID`) AS `counts`
  WHERE `client`.`ClientID` = `counts`.`ClientID`
  GROUP BY `Occupation`;

/*
 Purpose and Steps (Query 9)

 First, Occupation is selected from the client table. The second column contains averages AVG() of the returned values from the subquery and is assigned an alias. The FROM statement includes the client table and the table returned by the subquery. The subquery uses the ClientID field in the borrower table, which contains unique values identifying which client borrowed a book. This then returns counts of the number of times each client borrowed a book, and groups those counts by client. Those counts are then averaged for each occupation associated with the clients who borrowed books. This time the WHERE statement associates ClientID in the client table with ClientID in the table returned by the subquery.

 Result (Query 9)

 Occupation	Average Borrowed
 Student	4.4211
 Firefighter	3.2500
 School Psychologist	2.0000
 Professor	3.5000
 Securities Clerk	2.0000
 Violinist	4.0000
 Licensed Massage Therapist	2.0000
 Parquet Floor Layer	2.0000
 Computer Security Manager	6.0000
 Oil Exploration Engineer	5.0000
 Aircraft Electrician	2.0000
 Manufacturing Director	5.0000
 Window Washer	2.0000
 Repair Worker	3.0000
 Police Officer	4.5000
 Payroll Clerk	3.0000
 Dentist	5.6667
 Nurse	7.0000
 Insurance Agent	4.0000
 Bus Driver	4.0000
 Health Educator	2.0000
 Ship Engineer	4.0000
 Computer Engineer	3.0000
 Food Scientist	5.0000
 Computer Programmer	5.6667
 School Teacher	3.6000
 Doctor	4.0000
 Security Agent	2.0000
 Manager	3.0000
 HR Clerk	4.0000
 Systems Analyst	4.0000
 Cashier	5.0000

*/
