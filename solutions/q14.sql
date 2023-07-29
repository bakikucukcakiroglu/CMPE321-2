-- In the first condition, we check whether Film's directorId matches the director's ID, so that our data is consistent.
-- In the second condition, we simply check whether the film is released after 2015.
-- In the third condition, we check whether filmID is not in the awards list.
-- By combining those three conditions with AND statements we get the result.
-- After getting the result, we need to sort them, therefore we used ORDER BY commend with ASC option.
-- We assumed that the statement "after 2015" excludes 2015.

SELECT F.Title, D.Director_Name, F.Release_Year FROM Film F, Director D WHERE F.Director=D.Director_ID AND F.Release_Year>2015 AND F.Film_ID NOT IN (SELECT A.Awarded_Film FROM Award A) ORDER BY F.Release_Year ASC                             