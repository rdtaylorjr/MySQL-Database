# MySQL-Database


Query 1: Display all contents of the Clients table

Purpose and Steps: First, the ALTER TABLE statement creates indexes for each column in the client table. First and last names are always used together in this project, so a single index is created for both of them. The SELECT statement then selects all rows '*' from the client table. 'CS204' is the name of the schema I set up for this project in MySQL Workbench. USE INDEX forces the use of the indexes to speed up the search.



Computer Science 204: Database Programming
