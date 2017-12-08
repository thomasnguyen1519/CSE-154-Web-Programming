<?php

/*  Name: Tom Nguyen
	Date: May 30, 2017
    Section: AD (Garrett Jaeger)
    Assignment: Pokedex V2
    Contents: This is a PHP file that serves as a web service for the Pokedex.
    Specifically, this web service will delete Pokemon from the Pokedex table. */


    error_reporting(E_ALL & E_STRICT);

    include 'common.php';

    // Workflow to check the params sent to this web service.
    $db = createPDO();
    if (isset($_POST["name"])) {
        deletePokemon($db, $_POST["name"]);
    } else if (isset($_POST["mode"])) {
        deleteAllPokemon($db, $_POST["mode"]);
    } else {
        error400Output("Missing name or mode parameters");
    }
    
    /* Accepts a database and a Pokemon name param. Deletes the Pokemon from the
       table if it is present. Outputs a respective message about the results. */
    function deletePokemon($db, $pokemon) {
        $nameFixed = ucfirst($pokemon);
        deleteOne($db, $nameFixed);
        successOutput("Success! $nameFixed removed from your Pokedex!");
    }
    
    /* Accepts a database and a mode param. If the correct mode param was passed,
       then the Pokedex will be cleared. Outputs a respective message about the
       results. */
    function deleteAllPokemon($db, $mode) {
        if ($mode == "removeall") {
            $db->exec("DELETE FROM Pokedex");
            successOutput("Success! All Pokemon removed from your Pokedex!");
        } else {
            error400Output("Error: Unknown mode $mode");
        }
    }
?>