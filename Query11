/*
 Computer Science 204: Database Programming
 Assignment: Creating & Manipulating a Database
 Russell Taylor
 7/9/2020
 Completed Using MySQL
*/

-- Query 11: The top month of borrows in 2017

SELECT `Month`, COUNT(`Month`) AS `Borrows`
  FROM
   (SELECT MONTH(`BorrowDate`) AS `Month`
      FROM `CS204`.`borrower`
      WHERE YEAR(`BorrowDate`) = 2017) AS `months`
  GROUP BY `Month`
  ORDER BY `Borrows` DESC LIMIT 1;

/*
 Purpose and Steps (Query 11)

 First, the subquery SELECTs the month from the BorrowDate field in the borrower table and assigns the alias 'Month' to it. The WHERE statement in the subquery limits the selected months to the year 2017. The main SELECT statement then selects Month from the table returned by the subquery, and a count of the number of times each Month occurs in the table returned by the subquery. This count is equal to the number of borrows that occurred during that month, so the result is given the alias 'Borrows'. The number of Borrows are grouped by each Month, the result is then sorted in descending order and only the largest result is displayed.

 Result (Query 11)

 Month	Borrows
 8	10

*/
