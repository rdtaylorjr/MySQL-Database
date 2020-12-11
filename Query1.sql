/*
 Computer Science 204: Database Programming
 Assignment: Creating & Manipulating a Database
 Russell Taylor
 7/9/2020
 Completed Using MySQL
*/

-- Query 1: Display all contents of the Clients table

ALTER TABLE `CS204`.`client`
  ADD UNIQUE INDEX `ClientID_UNIQUE` (`ClientID` ASC) VISIBLE,
  ADD INDEX `ClientName_index` (`ClientLastName` ASC, `ClientFirstName` ASC) VISIBLE,
  ADD INDEX `ClientDOB_index` (`ClientDOB` ASC) VISIBLE,
  ADD INDEX `ClientOccupation_index` (`Occupation` ASC) VISIBLE;

SELECT *
  FROM `CS204`.`client` USE INDEX (`ClientID_UNIQUE`, `ClientName_index`, `ClientDOB_index`, `ClientOccupation_index`);

/*
 Purpose and Steps (Query 1)

 First, the ALTER TABLE statement creates indexes for each column in the client table. First and last names are always used together in this project, so a single index is created for both of them. The SELECT statement then selects all rows '*' from the client table. 'CS204' is the name of the schema I set up for this project in MySQL Workbench. USE INDEX forces the use of the indexes to speed up the search.

*/
