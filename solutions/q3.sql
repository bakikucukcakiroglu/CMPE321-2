-- We use subquery to find the film with the minimum budget. For that, we use the built-in MIN() function.
-- Then, we use IN statement inside "Where" statement to ensure that our selected film has this budget. 
-- Since the set includes only
-- one element, only the films with the minimum budget will be shown.
-- We use asterisk(*) to choose all the fields of the films with the minimum budget.

SELECT * FROM Film F WHERE F.Budget IN (SELECT MIN(F2.Budget) FROM Film F2)