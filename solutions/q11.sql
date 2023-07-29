-- This time, logic is quite similar, but we need to use  NOT IN statement instead of IN statement.
-- First, we check if director name is Martin Scorsese. If yes, we reject it.
-- Then, we check if the film exists in awards table. If yes, we reject it.
-- We combine these two conditions with AND statement so that both of them are satisfied.
 

SELECT * FROM Film F WHERE F.Director NOT IN (SELECT D.Director_ID FROM Director D WHERE D.Director_Name=' Martin Scorsese' ) AND F.Film_ID NOT IN (SELECT A.Awarded_Film FROM Award A )                                 