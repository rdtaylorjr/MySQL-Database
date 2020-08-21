/*
 Computer Science 204: Database Programming
 Assignment: Creating & Manipulating a Database
 Russell Taylor
 7/9/2020
 Completed Using MySQL
*/

-- Query 13: The oldest and the youngest clients of the library

SELECT `ClientFirstName`, `ClientLastName`, `Age`
  FROM
   (SELECT `ClientFirstName`, `ClientLastName`, YEAR(CURDATE()) - `ClientDOB` AS `Age`
    FROM `CS204`.`client` USE INDEX (`ClientID_UNIQUE`, `ClientName_index`, `ClientDOB_index`)
    ORDER BY `Age` LIMIT 1) AS `youngest`
UNION
SELECT `ClientFirstName`, `ClientLastName`, `Age`
  FROM
   (SELECT `ClientFirstName`, `ClientLastName`, YEAR(CURDATE()) - `ClientDOB` AS `Age`
    FROM `CS204`.`client` USE INDEX (`ClientID_UNIQUE`, `ClientName_index`, `ClientDOB_index`)
    ORDER BY `Age` DESC LIMIT 1) AS `oldest`;

/*
 Purpose and Steps (Query 13)

 This query uses a union to return both the oldest and youngest clients. The two SELECT statements are the same except that the first is sorted in ascending order to return the lowest value, and the second is sorted in descending order to return the highest value.
 In each SELECT statement, a subquery is used to select ClientFirstName and ClientLastName from the client table, calculate the clients' ages from ClientDOB in the client table, and sort the resulting records in either ascending or descending order. Subqueries are needed in order to include different ORDER BY statements in each part of the UNION statement.
 The indexes created in Query 1 are used for faster searching.

 Result (Query 13)

 ClientFirstName	ClientLastName	Age
 Alina	Morton	10
 Mya	Austin	60

*/
