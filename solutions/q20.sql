-- This time, we use a different command which is "CASE WHEN". 
-- It works similar to if else statements and we used it to return TRUE or FALSE.
-- We check the condition in a subquery, we return all the directors whose at least one film won an award.
-- Then we check if the ID of the director is inside this set, if it is in the set we return true.
-- If it is not in the set, we return false. We terminate the condition check with "END" keyword.
-- We display the table as "Awarded" with the help of "AS" command.

SELECT D.Director_ID , CASE WHEN (D.Director_ID IN (SELECT DISTINCT F.Director FROM Award A, Film F WHERE A.Awarded_Film=F.Film_ID )) THEN "TRUE" ELSE "FALSE" END AS Awarded FROM Director D