# MySQL-Database


Query 1: Display all contents of the Clients table

Purpose and Steps: First, the ALTER TABLE statement creates indexes for each column in the client table. First and last names are always used together in this project, so a single index is created for both of them. The SELECT statement then selects all rows '*' from the client table. 'CS204' is the name of the schema I set up for this project in MySQL Workbench. USE INDEX forces the use of the indexes to speed up the search.

Query 2: First names, last names, ages and occupations of all clients

Purpose and Steps: Three of the columns already exist in the client table: ClientFirstName, ClientLastName, and Occupation. The values in ClientDOB, which are years, are then used to calculate each client's age. CURDATE() returns the current date in YYYY-MM-DD format. YEAR() returns only the year from CURDATE(). ClientDOB is then subtracted from the current year. The result is then given the alias Age. The indexes created in Query 1 are used for faster searching.



Computer Science 204: Database Programming
