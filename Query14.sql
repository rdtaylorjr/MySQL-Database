/*
 Computer Science 204: Database Programming
 Assignment: Creating & Manipulating a Database
 Russell Taylor
 7/9/2020
 Completed Using MySQL
*/

-- Query 14: First and last names of authors that wrote books in more than one genre

CREATE VIEW `CS204`.`query14view` AS
  SELECT `AuthorFirstName`, `AuthorLastName`, COUNT(DISTINCT `Genre`) AS `# of Genres`
    FROM `CS204`.`author`, `CS204`.`book`
    WHERE `AuthorID` = `BookAuthor`
    GROUP BY `AuthorFirstName`, `AuthorLastName`;

SELECT `AuthorFirstName`, `AuthorLastName`, `# of Genres`
  FROM `CS204`.`query14view`
  WHERE `# of Genres` > 1;

/*
 Purpose and Steps (Query 14)

 This solution makes use of a VIEW. To create the VIEW, AuthorFirstName and AuthorLastName are selected from the author table. The third column of the VIEW is a count of distinct Genres associated with each author. The counts of Genres are grouped by the authors' names.
 The SELECT statement selects the authors' names where the number of Genres is greater than 1.

 Result (Query 14)

 AuthorFirstName	AuthorLastName	# of Genres
 NULL	NULL	NULL

*/
