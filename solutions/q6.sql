-- We are asked to display the result as "Film_Count". Therefore we used AS keyword to display it like that.
-- We show only genre's type, so we only select G.Type
-- We check that Film's GenreId and GenreId of Genre table matches to ensure consistency in the data.
-- We select the number of films for each type by combining COUNT() and GROUP BY functions.
-- These two functions show the total number of films for each genre. 
-- Then, we use ORDER BY function to sort the data in descending order. 
-- First according to film_count, then according to genre type(to get exactly the expected output).

SELECT  G.Type, COUNT(*) AS Film_Count FROM Film F, Genre G WHERE F.Genre=G.Genre_ID GROUP BY F.Genre ORDER BY Film_Count DESC, G.Type DESC