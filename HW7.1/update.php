<?php
    
/*  Name: Tom Nguyen
	Date: May 30, 2017
    Section: AD (Garrett Jaeger)
    Assignment: Pokedex V2
    Contents: This is a PHP file that serves as a web service for the Pokedex.
    Specifically, this web service will update the nickname of a Pokemon in the
    Pokedex table. */

    
    error_reporting(E_ALL & E_STRICT);
    
    include 'common.php';
    
    // Workflow to check the params that were sent to this web service.
    if (isset($_POST["name"]) && isset($_POST["nickname"])) {
        $name = ucfirst($_POST["name"]);
        updateNickname($name, $_POST["nickname"]);
    } else if (!isset($_POST["name"]) && !isset($_POST["nickname"])) {
        error400Output("Missing name and nickname parameters");
    } else if (!isset($_POST["nickname"])) {
        error400Output("Missing nickname parameter");
    } else {
        error400Output("Missing name parameter");
    }
    
    /* Accepts a param of a Pokemon name and a nickname. If the Pokemon name exists
       in the Pokedex then its nickname will be updated to the nickname param. Outputs
       a message according to the results of the process. */
    function updateNickname($name, $nickname) {
        $db = createPDO();
        $namefixed = strtoupper($name);
        if (checkOwned($db, $nameFixed)) {
            $db->query("UPDATE Pokedex SET nickname='$nickname' WHERE name='$nameFixed'");
            successOutput("Success! Your $nameFixed is now named $nickname");
        } else {
            error400Output("Error: Pokemon $name was not found in your Pokedex.");
        }
    }
?>

