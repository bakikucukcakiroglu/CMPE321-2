-- Again, we use subqueries. We get the necessary columns from film table and check if the release year
-- satisfies the condition in the first subquery. Then, we check the second condition in the second subquery.
-- First subquery gets the release year of godfather and checks our queried film has the same release year.
-- Second subquery gets the budget of godfather and checks whether our queried film has higher budget.
-- Then, we combine those two conditions with AND statement.

SELECT F.Title, F.Release_Year, F.Budget FROM Film F WHERE F.Release_Year =(SELECT F.Release_Year FROM Film F WHERE F.Title='The Godfather') AND F.Budget > (SELECT F.Budget FROM Film F WHERE F.Title='The Godfather') 