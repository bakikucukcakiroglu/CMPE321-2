--- We select every entry from Film and Directors table.
--- Then we eliminate some rows if genre id's for film and director don't match inside "WHERE" Statement.
--- We also check if director's ID and film's director ID are same so that we don't display inconsistent data.


SELECT * FROM Film F, Director D WHERE F.Director=D.Director_ID AND F.Genre=D.Favorite_Genre