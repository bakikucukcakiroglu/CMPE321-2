--This SQL query returns the total number of films in the database.
-- We use built-in "Count" function of SQL to calculate the total number of films in the database.
-- To make aliasing and display the column as "Film_Count", we used "AS" keyword.

SELECT COUNT(*) AS Film_Count FROM Film 