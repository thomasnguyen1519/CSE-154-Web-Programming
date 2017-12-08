/* Tom Nguyen
   May 27, 2017
   CSE 154 AD (Garrett Jaeger)
   Assignment: Creative Project #8/9
   Content: This SQL file initializes the Pokedex table in a database. */



CREATE TABLE IF NOT EXISTS Pokedex(
    name VARCHAR(20) PRIMARY KEY,
    nickname VARCHAR(20),
    datefound DATETIME
);