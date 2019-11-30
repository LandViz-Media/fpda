<!DOCTYPE html>
<html lang="en">
<head>
<title></title>
<style>
html, body {
    /*height:100%;*/
    margin:0;
    padding:0;
	height: 100vh;
}
</style>

<script>

</script>

<script src="https://code.jquery.com/jquery-3.1.0.js"></script>
</head>

<body>
	<h3>FPDA Training Log</h3>




	<?php

//header('Content-type: text/plain');
require("../../conn1.php");

$mysqli = new mysqli($hostname, $username, $password, $database);
// Check connection
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}


$table = 'fpdaTime';

$sql = "SELECT * FROM $table";


$result = $mysqli->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
	    $cat1 = $row["cat1"];
	    $cat1Select .= '<option value="'.$cat1.'">'.$cat1.'</option>';

		$cat2 = $row["cat2"];
	    $cat2Select .= '<option value="'.$cat2.'">'.$cat2.'</option>';
    }
}


$mysqli->close();
?>




Activity: <select id="category1">
			<option value="-"></option>
			<?php print $cat1Select ?>
		</select>
<br>
		Sub Activity: <select id="category2">
			<option value="-"></option>
			<option value="Select">-</option>
			<?php print $cat2Select ?>
		</select>

		Hours: <select id="hours">
			<option value="0">0</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
		</select>

		Minutes: <select id="minutes">
			<option value="0">0</option>
			<option value="5">5</option>
			<option value="10">10</option>
			<option value="15">15</option>
			<option value="20">20</option>
			<option value="25">25</option>
			<option value="30">30</option>
			<option value="35">35</option>
			<option value="40">40</option>
			<option value="45">45</option>
			<option value="50">50</option>
			<option value="55">55</option>
		</select>





</body>
</html>