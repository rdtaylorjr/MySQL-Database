# MySQL-Database


Query 1: Display all contents of the Clients table

Purpose and Steps: First, the ALTER TABLE statement creates indexes for each column in the client table. First and last names are always used together in this project, so a single index is created for both of them. The SELECT statement then selects all rows '*' from the client table. 'CS204' is the name of the schema I set up for this project in MySQL Workbench. USE INDEX forces the use of the indexes to speed up the search.

Query 2: First names, last names, ages and occupations of all clients

Purpose and Steps: Three of the columns already exist in the client table: ClientFirstName, ClientLastName, and Occupation. The values in ClientDOB, which are years, are then used to calculate each client's age. CURDATE() returns the current date in YYYY-MM-DD format. YEAR() returns only the year from CURDATE(). ClientDOB is then subtracted from the current year. The result is then given the alias Age. The indexes created in Query 1 are used for faster searching.

Query 3: First and last names of clients that borrowed books in March 2018

Purpose and Steps: First, select the columns for the client's first and last names from the client table. An INNER JOIN is used to join these columns to the BorrowDate field in the borrower table. The primary key ClientID in the client table and the foreign key ClientID in the borrower table allow the relevant records in the two tables to be used together. The WHERE statement ensures that only records where the BorrowDate in the borrower table equals 3/2018 are selected. BorrowDate is in the format YYYY-MM-DD, so MONTH() is used to return only the month and YEAR() is used to return only the year. USE INDEX forces the use of the relevant indexes in the client table for faster searching.


Computer Science 204: Database Programming
