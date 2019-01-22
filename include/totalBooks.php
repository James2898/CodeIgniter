<?php

// Connect to the database
$link = mysqli_connect ("localhost","root","","library");
if ($link == false) {
  die ("ERROR: Could not connect. ".mysqli_connect_error());
}

// Execute query
$sql = "SELECT COUNT(1) FROM books";
$result = mysqli_query($link,$sql);
$row = mysqli_fetch_array($result);
$total = $row[0];
echo $total;

mysqli_close($link);
