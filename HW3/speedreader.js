alert("Yay, it works!");



(function (){
	window.onload = function (){

	}

	function test() {
		alert("This is working.");
	}

	function $(str) {
		return document.getElementById(str);
	}

	function startParse() {
		var result = yourString.split(/[ \t\n]+/);
	}

	function stopParse() {
		alert();
		var displayTag = $("currentword");
		displayTag.innerHTML = "";
	}

})();
