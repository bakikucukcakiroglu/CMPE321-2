--The first subquery returns the maximum budget spent each year. It uses grouping to achieve this. 
--The secınd subquery returns all films and directors all together. It simply takes cross product of Film and Director tables.
--Inner join of the first and the second subqueries gives all possibble films that have the maximum budget for the year they are recorded. 
--Only the first subquery would work if the assumption that each year only one film recorded with the maximum budget had been guaranteed to hold. 
--As keyword is used to show the second column of the output as 'Max_Budget'

SELECT T2.Director_Name, T1.Release_Year, T2.Budget AS Max_Budget FROM (SELECT  F.Release_Year , MAX(F.Budget) AS Budget FROM Film F GROUP BY F.Release_Year)T1 INNER JOIN (SELECT  F.Release_Year , F.Budget, D.Director_Name FROM Film F, Director D WHERE F.Director=D.Director_ID )T2 ON T1.Release_Year=T2.Release_Year AND T1.Budget=T2.Budget ORDER BY T1.Release_Year ASC                                 