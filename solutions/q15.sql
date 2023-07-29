-- The first subquery list the film number of each director. 
-- Inner join of the first subquery with Director table gives each directors with the number of films they recorded.
-- Max film count of the inner join gives directors with the maximumum number of films recorded. 
-- As statement is used to change the name of the second column of the output. 

SELECT D.Director_Name, MAX(T.Film_Count) AS Film_Count FROM (SELECT F.Director, Count(*) AS Film_Count  FROM Film F GROUP BY F.Director)T INNER JOIN Director D ON T.Director=D.Director_ID
