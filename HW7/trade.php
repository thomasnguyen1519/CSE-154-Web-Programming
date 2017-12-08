<?php

/*  Name: Tom Nguyen
	Date: May 30, 2017
    Section: AD (Garrett Jaeger)
    Assignment: Pokedex V2
    Contents: This is a PHP file that serves as a web service for the Pokedex.
    Specifically, this web service will trade Pokemon from another Pokedex. */


    error_reporting(E_ALL & E_STRICT);
    
    include 'common.php';

    // Workflow to check the params sent to this web service. 
    if (isset($_POST["mypokemon"]) && isset($_POST["theirpokemon"])) {
        $name = ucfirst($_POST["mypokemon"]);
        trade($name, $_POST["theirpokemon"]);
    } else if (!isset($_POST["mypokemon"]) && !isset($_POST["theirpokemon"])) {
        error400Output("Missing mypokemon and theirpokemon parameters");
    } else if (!isset($_POST["theirpokemon"])) {
        error400Output("Missing theirpokemon parameter");
    } else {
        error400Output("Missing mypokemon parameter");
    }

    /* Accepts two Pokemon name params. If the first is present and the second is not
       present then the first Pokemon will be removed from the Pokedex and the second
       Pokemon will be added. Outputs a respective message according to the results
       of the process. */
    function trade($name, $theirName) {
        $db = createPDO();
        if (!checkOwned($db, $name)) {
            error400Output("Error: Pokemon $name not found in your Pokedex.");
        } else if (checkOwned($db, $theirName)) {
            error400Output("Error: You have already found $theirName");
        } else {
            $nickname = strtoupper($theirName);
            deleteOne($db, $name);
            insertPokemon($db, $theirName, $nickname);
            successOutput("Success! You have traded your $name for ${theirName}!");
        }
    }

?>