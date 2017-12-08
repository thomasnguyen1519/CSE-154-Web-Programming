/*  Name: Tom Nguyen
    Date: May 15, 2017
    Section: AD (Garrett Jaeger)
    Assignment: Bestreads
    Contents: This is the JS code for the Bestreads webpage. Links together
    with a separate HTML file. This JS file creates an interactive user interface
    on the webpage that allows the user to navigate through the books. */

(function() {

	"use strict";

	// Loads once the HTML loads and gives the ability for user interaction.
	window.onload = function() {
		loadBooks();
		$("back").onclick = loadBooks;
	};
	
	// Requests data of the books, processes the data, and displays the books on the webpage.
	function loadBooks() {
		$("singlebook").classList.add("hidden");
		var ajaxPromise = new AjaxGetPromise("bestreads.php?mode=books");
		ajaxPromise
			.then(function(response) {
	    		processBookData(response);
    		})
    		.catch(function(errorMessage) {
    			error();
    		});
	}
	
	/* Requests data of a selected book from the local server and displays a different
	   viewport with more details about the selected book. */
	function singleBookLoad() {
		$("allbooks").innerHTML = "";
		$("singlebook").classList.remove("hidden");
		var imgFilePath = this.firstChild.src;
		var folderName = imgFilePath.split("books\/")[1].replace("/cover.jpg", "");
		$("cover").src = imgFilePath;
		$("cover").alt = "book cover";
		getInfo(folderName);
		reviews(folderName);
		description(folderName);
	}
	
	/* Accepts the folder name of a book as a param, retrieves the book's info from the
	   local server, and populates it onto the webpage. */
	function getInfo(book) {
		var ajaxPromise = new AjaxGetPromise("bestreads.php?title=" + book + "&mode=info");
		ajaxPromise
	    	.then(function(response) {
	    		var data = JSON.parse(response);
				$("title").innerText = data["title"];
				$("author").innerText = data["author"];
				$("stars").innerText = data["stars"];
	    	})
	    	.catch(function(errorMessage) {
	    		error();
	    	});
	}
	
	/* Accepts the folder name of a book as a param, retrieves each of the book's reviews
	   from the local server, and appends it onto the webpage. */
	function reviews(book) {
		var ajaxPromise = new AjaxGetPromise("bestreads.php?title=" + book + "&mode=reviews");
		ajaxPromise
	    	.then(function(response) {
	    		processReviewsData(response);
	    	})
	    	.catch(function(errorMessage) {
	    		error();
	    	});
	}

	/* Accepts the folder name of a book as a param, retrieves the book's description from
	   the local server, and populates it onto the webpage. */
	function description(book) {
		var ajaxPromise = new AjaxGetPromise("bestreads.php?title=" + book + "&mode=description");
		ajaxPromise
			.then(function(response) {
				$("description").innerText = response;
			})
			.catch(function(errorMessage) {
				error();
			});
	}
	
	/* Accepts a param of the books data in JSON format, processes the data, and displays
	   the books on the webpage. */
	function processBookData(responseData) {
		var data = JSON.parse(responseData);
		var books = data.books;
		$("allbooks").innerHTML = "";
		for (var i = 0; i < books.length; i++) {
			var bookDiv = document.createElement("div");
			var bookCover = document.createElement("img");
			var bookTitle = document.createElement("p");
			bookCover.src = "books/" + books[i].folder + "/cover.jpg";
			bookCover.alt = books[i].title + " cover";
			bookTitle.innerText = books[i].title;
			bookDiv.appendChild(bookCover);
			bookDiv.appendChild(bookTitle);
			bookDiv.onclick = singleBookLoad;
			$("allbooks").appendChild(bookDiv);
		}
	}
	
	/* Accepts a param of the reviews data of a selected book in JSON format, processes
	   the data, and displays the reviews on the webpage. */
	function processReviewsData(responseData) {
		var data = JSON.parse(responseData);
		$("reviews").innerHTML = "";
		for (var i = 0; i < data.length; i++) {
			var name = document.createElement("h3");
			var score = document.createElement("span");
			var review = document.createElement("p");
			name.innerHTML = data[i]["name"] + " ";
			score.innerText = data[i]["score"];
			review.innerText = data[i]["text"];
			name.appendChild(score);
			$("reviews").appendChild(name);
			$("reviews").appendChild(review);
		}
	}

	// Returns the DOM element whose id corresponds with the string param.
	function $(id) {
		return document.getElementById(id);
	}
	
	// Alerts the client that an error occurred.
	function error() {
		alert("ERROR!");
	}
})();