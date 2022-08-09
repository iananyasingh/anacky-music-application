<?php
include("../../config.php");


if(isset($_POST['playlistId']) && isset($_POST['songId'])) 
{
	$playlistId = $_POST['playlistId'];
	$songId = $_POST['songId'];

	$orderIdQuery = mysqli_query($con, "SELECT MAX(playlistOrder) + 1 as playlistOrder FROM playlistSongs WHERE playlistId='$playlistId'");
	$row = mysqli_fetch_array($orderIdQuery);
	$order = $row['playlistOrder'];
  
  	$sql = "SELECT COUNT(*) FROM playlistSongs";
	$res = mysqli_query($con, $sql);
	$id = mysqli_fetch_assoc($res)['COUNT(*)'];
	$id++;


	$query = mysqli_query($con, "INSERT INTO playlistSongs VALUES('$id', '$songId', '$playlistId', '$order')");

}
else 
{
	echo "PlaylistId or songId was not passed into addToPlaylist.php";
}



?>