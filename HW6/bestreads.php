<?php

/*  Name: Tom Nguyen
	Date: May 15, 2017
    Section: AD (Garrett Jaeger)
    Assignment: Bestreads
    Contents: This is the PHP server-side code for the Bestreads webpage.
    This PHP file processes requests depending on the params passed to it and 
    outputs data, corresponding to the param, about the available books. */


	// Workflow that determines what data to output.
	$book = $_GET['title'];
	$dataType = $_GET['mode'];
	if (isset($book)) {
		if ($dataType == "reviews") {
			getReviews($book);
		} else if ($dataType == "description") {
			getDescription($book);
		} else if ($dataType == "info") {
			getInfo($book);
		}
	} else if ($dataType == "books") {
		populateBooks();
	}

	// Processes the books and outputs backend information about the books in JSON format.
	function populateBooks() {
		$books = glob("books/*");
		foreach ($books as $book) {
			$title = file("${book}/info.txt")[0];
			$folder = substr($book, 6, strlen($book));
			$jsonContents["books"][] = [
				"title" => trim($title),
				"folder" => trim($folder),
			];
		}
		header('Content-type: application/json');
		echo json_encode($jsonContents, JSON_PRETTY_PRINT);
	}
	
	// Accepts a param of a folder name and outputs the description of the book in plain text.
	function getDescription($folder) {
		header('Content-type: text/plain');
		echo trim(file_get_contents("books/${folder}/description.txt"));
	}

	// Accepts a param of a folder name and outputs info of the book in JSON format.
	function getInfo($folder) {
		$info = file("books/${folder}/info.txt");
		$jsonEncoded = [
			"title" => trim($info[0]),
			"author" => trim($info[1]),
			"stars" => trim($info[2]),
		];
		header('Content-type: application/json');
		echo json_encode($jsonEncoded, JSON_PRETTY_PRINT);
	}

	// Accepts a param of a folder name and outputs the contained reviews files in JSON format.
	function getReviews($folder) {
		$glob = glob("books/${folder}/*");
		foreach($glob as $file) {
    		if (preg_match('/review\d*\.txt$/', $file)) {
		        $contents = file($file);
		        $jsonContents[] = [
		        	"name" => trim($contents[0]),
		        	"score" => trim($contents[1]),
		        	"text" => trim($contents[2]),
	        	];
		    }
		}
		header('Content-type: application/json');
		echo json_encode($jsonContents, JSON_PRETTY_PRINT);
	}
?>
