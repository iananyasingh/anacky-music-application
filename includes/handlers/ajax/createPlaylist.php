<?php
include("../../config.php");

if(isset($_POST['name']) && isset($_POST['username'])) {

	$name = $_POST['name'];
	$username = $_POST['username'];
	$date = date("Y-m-d");

  
  	$sql = "SELECT COUNT(*) FROM playlists";
	$res = mysqli_query($con, $sql);
	$id = mysqli_fetch_assoc($res)['COUNT(*)'];
	$id++;

  	
	$query = mysqli_query($con, "INSERT INTO playlists VALUES('$id', '$name', '$username', '$date')");

}
else {
	echo "Name or username parameters not passed into file";
}

?>