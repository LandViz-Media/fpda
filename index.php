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

$sql = "SELECT * $table";


$result = $mysqli->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
	    $cat1 = $row["cat1"];

print $cat1;
	    $cat1Select .= '<option value="'.$cat1.'">'.$cat1.'</option>';
    }
}


$mysqli->close();
?>





Class: <select id="category1">
			<option value="-"></option>
			<option value="Select">-</option>
			<?php print $cat1Select ?>
		</select>





</body>
</html>