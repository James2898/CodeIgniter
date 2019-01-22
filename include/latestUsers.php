<?php

// Connect to the database
$link = mysqli_connect ("localhost","root","","library");
if ($link == false) {
  die ("ERROR: Could not connect. ".mysqli_connect_error());
}

// Execute query
$sql = "SELECT * FROM users ORDER BY id DESC LIMIT 5";
if ($result = mysqli_query($link,$sql)) {
  while($row = mysqli_fetch_array($result)) {
    // Get first letter of the middle name
    $str = $row['middle_name'];

    echo "<tr>";
      echo "<td>" . $row['id'] . "</td>";
      echo "<td>" . $row['last_name'] . ", " . $row['first_name'] . " " . $str[0] . ".</td>";
      echo "<td>" . $row['email'] . "</td>";
    echo "</tr>";
  }
} else {
  echo "ERROR: Could not execute $sql. " .mysqli_error($link);
}

mysqli_close($link);
