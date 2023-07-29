--The first subquery returns the maximum number of awards that is acquired by a director for each genre. 
--The second subquery returns the number of awards of each director for each genre. 
--Inner join of the first and the second subqueries gives the director with the maximum number of awards for corresponding genre. 
--Only the first subquery would work if the assumption that the maximum number of award record holder is unique for each genre had been guaranteed to hold. 
--As keyword is used to show the second column of the output as 'Award_Count'

SELECT t2.Type AS Genre, t2.Director_Name, t2.Awards AS Award_Count FROM (SELECT t.Genre, MAX(t.Awards) AS Awards FROM (SELECT  F.Genre, COUNT(*) AS Awards FROM Film F, Award A, Director D WHERE F.Film_ID=A.Awarded_Film AND F.Director=D.Director_ID GROUP BY F.Director, F.Genre) t GROUP BY t.Genre)t1  INNER JOIN (SELECT * , COUNT(*) AS Awards FROM Film F, Award A, Director D, Genre G WHERE F.Genre=G.Genre_ID AND F.Film_ID=A.Awarded_Film AND F.Director=D.Director_ID GROUP BY F.Director, F.Genre) t2 ON t1.Genre=t2.Genre AND t1.Awards=t2.Awards ORDER BY t2.Type ASC