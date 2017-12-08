<?php

/*  Name: Tom Nguyen
	Date: May 30, 2017
    Section: AD (Garrett Jaeger)
    Assignment: Pokedex V2
    Contents: This PHP file contains commonly used functions in the other web
    services. */


    // could add a query to find the name of a pokemon in the table
    
    error_reporting(E_ALL & E_STRICT);

    // Accepts a message param. Outputs a successful message in JSON format.
    function successOutput($message) {
        $output[] = [
            "success" => $message
        ];
        header("Content-Type: application/json");
        echo json_encode($output, JSON_PRETTY_PRINT);
    }
    
    // Accepts a message param. Outputs an error message in JSON format.
    function error400Output($message) {
        $output[] = [
            "error" => $message
        ];
        header("HTTP/1.1 400 bad request");
        echo json_encode($output, JSON_PRETTY_PRINT);
    }
    
    // Returns a newly created PDO object.
    function createPDO() {
        $db = new PDO("mysql:dbname=hw7;host=localhost;charset=utf8", "root", "");
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $db;
    }
    
    /* Accepts a PDO and a Pokemon param. Returns whether the Pokemon is contained in the
       PDO object. */
    function checkOwned($db, $pokemon) {
        $rows = $db->query("SELECT COUNT(*) FROM Pokedex WHERE name='$pokemon'");
        return $rows->fetchColumn() > 0;
    }
    
    /* Accepts a PDO, a Pokemon name, and a nickname param. Inserts the Pokemon name
       and nickname into the PDO. */
    function insertPokemon($db, $pokemon, $nickname) {
        date_default_timezone_set('America/Los_Angeles');
        $time = date('y-m-d H:i:s');
        $rows = $db->exec("INSERT INTO Pokedex (name, nickname, datefound) VALUES
                ('$pokemon', '$nickname', '$time')");
    }
    
    /* Accepts a PDO and a Pokemon name param. If the Pokemon name exists in the PDO
       then it will be removed. Otherwise, an error message will be outputted. */
    function deleteOne($db, $pokemon) {
        $nameFixed = ucfirst($pokemon);
        if (checkOwned($db, $nameFixed)) {
            $db->exec("DELETE FROM Pokedex WHERE name='$nameFixed'");
        } else {
            error400Output("Error: Pokemon $pokemon was not found in your Pokedex.");
        }
    }
?>