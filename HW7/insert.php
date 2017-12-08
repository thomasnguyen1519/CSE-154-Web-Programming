<?php

/*  Name: Tom Nguyen
	Date: May 30, 2017
    Section: AD (Garrett Jaeger)
    Assignment: Pokedex V2
    Contents: This is a PHP file that serves as a web service for the Pokedex.
    Specifically, this web service will insert Pokemon into the Pokedex table. */


    error_reporting(E_ALL & E_STRICT);

    include 'common.php';

    // Workflow to check the params sent to this web service. 
    if (isset($_POST["name"])) {
        if (isset($_POST["nickname"])) {
            $nickname = $_POST["nickname"];
        } else {
            $nickname = strtoupper($_POST["name"]);
        }
        savePokemon($_POST["name"], $nickname);
    } else {
        error400Output("Missing name parameter");
    }

    /* Accepts two params of a Pokemon name and nickname. Inserts the Pokemon with
       nickname unless it is already present. Outputs a message respective to the 
       result of the process. */
    function savePokemon($pokemon, $nickname) {
        $db = createPDO();
        if (!checkOwned($db, $pokemon)) {
            insertPokemon($db, $pokemon, $nickname);
            successOutput("Success! $pokemon added to your Pokedex!");
        } else {
            error400Output("Error: Pokemon $pokemon already found."); 
        }
    }
?>