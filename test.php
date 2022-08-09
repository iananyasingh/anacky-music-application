<?php

// Create connection by passing these
// connection parameters
$conn = new mysqli("localhost","anacky_anacky","W5GdX1ijx4OJ","anacky_anacky");

$sql = "SELECT COUNT(*) FROM users";
$result = mysqli_query($conn, $sql);
$count = mysqli_fetch_assoc($result)['COUNT(*)'];
$count++;
echo $count;


// Close the connection
$conn->close();

?>
