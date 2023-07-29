-- We need to find the average of the budgets, luckily there is a built-in AVG function in SQL, so we used it.
-- To calculate average budget for each director, we need to combine AVG function with GROUP BY statement.
-- After getting results, we sort result according to average budget in descending order with DESC option.
-- To display the column as Avg_Budget, we use "AS" command.


SELECT D.Director_Name, AVG(F.Budget) AS Avg_Budget FROM Film F, Director D WHERE F.Director=D.Director_ID GROUP BY F.Director ORDER BY Avg_Budget DESC