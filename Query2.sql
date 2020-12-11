/*
 Computer Science 204: Database Programming
 Assignment: Creating & Manipulating a Database
 Russell Taylor
 7/9/2020
 Completed Using MySQL
*/

-- Query 2: First names, last names, ages and occupations of all clients

SELECT `ClientFirstName`, `ClientLastName`, YEAR(CURDATE()) - `ClientDOB` AS `Age`, `Occupation`
  FROM `CS204`.`client` USE INDEX (`ClientID_UNIQUE`, `ClientName_index`, `ClientDOB_index`, `ClientOccupation_index`);

/*
 Purpose and Steps (Query 2)

 Three of the columns already exist in the client table: ClientFirstName, ClientLastName, and Occupation. The values in ClientDOB, which are years, are then used to calculate each client's age. CURDATE() returns the current date in YYYY-MM-DD format. YEAR() returns only the year from CURDATE(). ClientDOB is then subtracted from the current year. The result is then given the alias Age.
 The indexes created in Query 1 are used for faster searching.

 Result (Query 2)

 ClientFirstName	ClientLastName	Age	Occupation
 Kaiden	Hill	14	Student
 Alina	Morton	10	Student
 Fania	Brooks	37	Food Scientist
 Courtney	Jensen	14	Student
 Brittany	Hill	37	Firefighter
 Max	Rogers	15	Student
 Margaret	McCarthy	39	School Psychologist
 Julie	McCarthy	47	Professor
 Ken	McCarthy	46	Securities Clerk
 Britany	O'Quinn	36	Violinist
 Conner	Gardner	22	Licensed Massage Therapist
 Mya	Austin	60	Parquet Floor Layer
 Thierry	Rogers	16	Student
 Eloise	Rogers	36	Computer Security Manager
 Gerard	Jackson	41	Oil Exploration Engineer
 Randy	Day	34	Aircraft Electrician
 Jodie	Page	30	Manufacturing Director
 Coral	Rice	24	Window Washer
 Ayman	Austin	18	Student
 Jaxson	Austin	21	Repair Worker
 Joel	Austin	47	Police Officer
 Alina	Austin	10	Student
 Elin	Austin	58	Payroll Clerk
 Ophelia	Wolf	16	Student
 Eliot	McGuire	53	Dentist
 Peter	McKinney	52	Professor
 Annabella	Henry	46	Nurse
 Anastasia	Baker	19	Student
 Tyler	Baker	36	Police Officer
 Lilian	Ross	37	Insurance Agent
 Thierry	Arnold	45	Bus Driver
 Angelina	Rowe	41	Firefighter
 Marcia	Rowe	46	Health Educator
 Martin	Rowe	44	Ship Engineer
 Adeline	Rowe	15	Student
 Colette	Rowe	57	Professor
 Diane	Clark	45	Payroll Clerk
 Caroline	Clark	60	Dentist
 Dalton	Clayton	38	Police Officer
 Steve	Clayton	30	Bus Driver
 Melanie	Clayton	33	Computer Engineer
 Alana	Wilson	13	Student
 Carson	Byrne	25	Food Scientist
 Conrad	Byrne	13	Student
 Ryan	Porter	12	Student
 Elin	Porter	42	Computer Programmer
 Tyler	Harvey	13	Student
 Arya	Harvey	12	Student
 Serena	Harvey	42	School Teacher
 Lilly	Franklin	44	Doctor
 Mai	Franklin	26	Dentist
 John	Franklin	21	Firefighter
 Judy	Franklin	25	Firefighter
 Katy	Lloyd	28	School Teacher
 Tamara	Allen	57	Ship Engineer
 Maxim	Lyons	35	Police Officer
 Allan	Lyons	37	Computer Engineer
 Marc	Harris	40	School Teacher
 Elin	Young	11	Student
 Diana	Young	12	Student
 Diane	Young	14	Student
 Alana	Bird	17	Student
 Anna	Becker	41	Security Agent
 Katie	Grant	43	Manager
 Joan	Grant	10	Student
 Bryan	Bell	19	Student
 Belle	Miller	50	Professor
 Peggy	Stevens	30	Bus Driver
 Steve	Williamson	45	HR Clerk
 Tyler	Williamson	21	Doctor
 Izabelle	Williamson	30	Systems Analyst
 Annabel	Williamson	60	Cashier
 Mohamed	Waters	54	Insurance Agent
 Marion	Newman	50	Computer Programmer
 Ada	Williams	34	Computer Programmer
 Sean	Scott	37	Bus Driver
 Farrah	Scott	46	Ship Engineer
 Christine	Lambert	47	School Teacher
 Alysha	Lambert	13	Student
 Maia	Grant	36	School Teacher

*/
