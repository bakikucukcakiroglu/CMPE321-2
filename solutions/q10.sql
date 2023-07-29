-- Again, we use subquery to check the last condition.
-- First two conditions are trivial, they just check whether Release_year is between 2000 and 2010.
-- Last condition checks whether the film's director's favorite genre is comedy.
-- To check that we have used subquery inside another subquery. We first find the id of the director's favorite genre,
-- Then get the type of that genre in other subquery.
-- Finally we check whether that type is comedy.
-- We combine all these three conditions with AND statements.

SELECT F.Title, F.Release_Year FROM Film F WHERE F.Release_Year<=2010 AND F.Release_Year>=2000 AND 'Comedy'=(SELECT G.Type FROM Genre G WHERE G.Genre_ID =(SELECT D.Favorite_Genre FROM Director D WHERE D.Director_ID = F.Director))                            