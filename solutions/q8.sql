-- We again use subquery in this question.
-- First of all we select all the film_ID's from award table which are in more than 3 entries.
-- To do that, we use GROUP BY and HAVING COUNT(*) >= 3 functions
-- After getting film ID_s, we get the director of those films.
-- However, a director might have directed more than one film which is awarded more than 3 times.
-- Therefore, we use select distinct to ensure that result has no duplicates director names.

SELECT DISTINCT D.Director_Name  FROM Film F, Director D WHERE F.Director=D.Director_ID AND F.Film_ID IN (SELECT  A.Awarded_Film FROM Award A GROUP BY A.Awarded_Film HAVING COUNT(*)>=3) ORDER BY D.director_Name ASC