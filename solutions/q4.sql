-- Similar to the previous question, we have subqueries this time for maximum budget.
-- After selecting maximum budget we use IN function inside WHERE to ensure that our selected elements have this max value.
-- Also, we select 3 fields from 3 different tables, to ensure that our data is consistent, we should check the foreign keys.
-- Therefore, we check director ID and film's directorId are the same and film's genreId hase the same value as genreId. Then we are done.


SELECT D.Director_Name, G.Type FROM Film F, Director D, Genre G WHERE F.Director = D.Director_ID AND F.Genre = G.Genre_ID AND F.Budget IN (SELECT MAX(F2.Budget) FROM Film F2)