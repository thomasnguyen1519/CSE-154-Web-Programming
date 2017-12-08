/* Tom Nguyen
   May 27, 2017
   CSE 154 AD (Garrett Jaeger)
   Assignment: Creative Project #8/9


   This query uses the Games table in the provided C9 database. Shows all the names,
   platforms, and release years of all the games in the database that have a name
   containing the word "Super" in it. The results will then be ordered by ascending
   release years (should show "89 rows in set..."). */


SELECT name,platform,release_year FROM Games WHERE name LIKE '%Super%' ORDER BY release_year;