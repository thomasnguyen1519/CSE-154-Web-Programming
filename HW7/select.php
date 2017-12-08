<?php

/*  Name: Tom Nguyen
	Date: May 30, 2017
    Section: AD (Garrett Jaeger)
    Assignment: Pokedex V2
    Contents: This is a PHP file that serves as a web service for the Pokedex.
    Specifically, this will output JSON data containing all the Pokemon in the
    Pokedex table. */

    error_reporting(E_ALL & E_STRICT);

    include 'common.php';
    
    $db = createPDO();
    $rows = $db->query("SELECT * FROM Pokedex");
    foreach ($rows as $row) {
        $results["pokemon"][] = [
            "name" => $row["name"],
            "nickname" => $row["nickname"],
            "datefound" => $row["datefound"]
        ];
    }
    header("Content-Type: application/json");
    echo json_encode($results, JSON_PRETTY_PRINT);

?>