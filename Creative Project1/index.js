//alert("Testing to see if this works");

(function() {
	window.onload = function() {
		$("generate").onclick = randomGen;
		$("generatemovie").onclick = chooseMovie;
	}


	function $(str) {
		return document.getElementById(str);
	}


	function chooseMovie() {
		var input = $("movieinput").value;
		var movieName = "";
		for (var i = 0; i < input.length; i++) {
			var ch = input.charAt(i);
			movieName += (ch === " ") ? "%20" : ch;
		}
		var apiURL = "http://netflixroulette.net/api/api.php?title=";
		var xhr = new XMLHttpRequest();
    	xhr.open("GET", apiURL + movieName);
    	xhr.onload = function() {
    		var data = JSON.parse(this.responseText)
    		data = data["summary"];
    		$("summarydisplay").innerHTML = data;
    	};
    	xhr.onerror = function() {
    		alert("ERROR!");
    	};
    	xhr.send();
	}

	function randomGen() {
		var names = ["Spider-man", "The Hulk", "Black Widow", "Deadpool",
                    "Ironman", "Thor", "Captain America", "Daredevil",
					"Vision", "Wolverine"];
		var index = Math.floor(Math.random() * names.length);
		var nameTag = $("heroname");
		nameTag.innerHTML = names[index];
	}

	function $(str) {
		return document.getElementById(str);
	}

	function change() {
		var nameTag = $("textincoolbutton");
		nameTag.innerHTML = "Superheros";
	}

	function changeBack() {
		var nameTag = $("textincoolbutton");
		nameTag.innerHTML = "Marvel";
	}
})();













