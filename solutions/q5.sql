-- This is a relatively simple query.
-- We are expected to find the sum of all fields of the film TABLE
-- SQL already has built-in "SUM" function to calculate that.
-- Since we are asked to display Total_Price, we used "AS" keyword for aliasing that column.

SELECT SUM(F.Budget) AS Total_Price FROM Film F