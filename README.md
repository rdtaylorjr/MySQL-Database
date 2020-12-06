# MySQL-Database


Query 1: Display all contents of the Clients table

Purpose and Steps: First, the ALTER TABLE statement creates indexes for each column in the client table. First and last names are always used together in this project, so a single index is created for both of them. The SELECT statement then selects all rows '*' from the client table. 'CS204' is the name of the schema I set up for this project in MySQL Workbench. USE INDEX forces the use of the indexes to speed up the search.

Query 2: First names, last names, ages and occupations of all clients

Purpose and Steps: Three of the columns already exist in the client table: ClientFirstName, ClientLastName, and Occupation. The values in ClientDOB, which are years, are then used to calculate each client's age. CURDATE() returns the current date in YYYY-MM-DD format. YEAR() returns only the year from CURDATE(). ClientDOB is then subtracted from the current year. The result is then given the alias Age. The indexes created in Query 1 are used for faster searching.

Query 3: First and last names of clients that borrowed books in March 2018

Purpose and Steps: First, select the columns for the client's first and last names from the client table. An INNER JOIN is used to join these columns to the BorrowDate field in the borrower table. The primary key ClientID in the client table and the foreign key ClientID in the borrower table allow the relevant records in the two tables to be used together. The WHERE statement ensures that only records where the BorrowDate in the borrower table equals 3/2018 are selected. BorrowDate is in the format YYYY-MM-DD, so MONTH() is used to return only the month and YEAR() is used to return only the year. USE INDEX forces the use of the relevant indexes in the client table for faster searching.

Query 4: First and last names of the top 5 authors clients borrowed in 2017

Purpose and Steps: First, select the columns for the authors' first and last names from the author table. The third column selected uses COUNT() to returns the number of times each combination of first and last name occurs. An alias is assigned to the third column. Foreign keys allow us to use associated records in three different tables: author, book, and borrower. The WHERE statement ensures that primary keys and foreign keys are equal, then limits the selected records to only those with a BorrowDate of 2017. GROUP BY displays the number of times each name occurs in the records. Finally, ORDER BY sorts the records from highest to lowest count (descending) and limits the number of records selected to the first 5, which are the top 5 authors clients borrowed in 2017.

Query 5: Least 5 author nationalities clients borrowed during the years 2015-2017

Purpose and Steps: First, select AuthorNationality from the author table. The second column selected contains a COUNT() of each time a book by an author of that nationality is borrowed. GROUP BY displays the count for each nationality. The count column is assigned an alias. The WHERE statement specifies which primary and foreign keys to use, and limits the records to ones where the BorrowDate is between 2015-2017. Finally, ORDER BY sorts the nationalities in ascending order by count and displays only the first 5.

Query 6: The book that was most borrowed during the years 2015-2017

Purpose and Steps: First, BookTitle is selected from the book table. The second column is a COUNT() of each time a BookID was borrowed. The WHERE statement identifies the primary and foreign keys, and limits the selected records to BorrowDates between 2015-2017. GROUP BY displays the count of borrows for each book title. ORDER BY sorts the records by count in descending order and displays only the first one.









Computer Science 204: Database Programming
