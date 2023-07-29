-- First part of the query is simple. We simply insert into the table Award with the given values.
-- First argument is award title which is given directly as constant text."
-- The second argument is tricky. We get the film_id of the film "After Sun" by using a subquery."
-- Together with these two arguments, our data is inserted into the table.

INSERT INTO Award(Award_Title, Awarded_Film) VALUES ('BU-Best Actor', (SELECT F.Film_ID  FROM Film F WHERE F.Title='After Sun'))