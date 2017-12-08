<html>
	<head>
		<title>Data Processing...</title>
	</head>
	<body>

	<?php
		$book = $_POST["address"];
		$filePath = str_replace(" ", "", $book);
		echo "$filePath";
	?>

	</body>
</html>