-- We select, title, director name and release year in the select statement from their tables.
-- Since year is already in YYYY format, we didn't apply any other settings.
-- We check first that id of the director table and id of the film's director column matches so that we don't list 
-- Wrong results. Further, we check that release year is before 2020 and order them in ascending order with ORDER BY and ASC keywords.

SELECT F.Title, D.Director_Name, F.Release_Year FROM Film F, Director D WHERE F.Director = D.Director_ID AND  F.Release_Year<2020 ORDER BY F.Release_Year ASC