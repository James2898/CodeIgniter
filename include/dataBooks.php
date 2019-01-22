<?php

// Connect to the database
$link = mysqli_connect("localhost","root","","library");
if ($link == false) {
  echo "ERROR: Could not connect. " .mysqli_error($link);
}

$sql = "SELECT * FROM books";
if ($result = mysqli_query($link,$sql)) {
  while($row = mysqli_fetch_array($result)) {
    echo "<tr>";
      echo "<td>" . $row['id'] . "</td>";
      echo "<td>" . $row['title'] . "</td>";
      echo "<td>";
        echo "<a id='". $row['id'] ."' class='view_data'><span class='glyphicon glyphicon-eye-open' aria-hidden='true' title='View Record' data-toggle='tooltip'></span></a>";
        echo "<a id='". $row['id'] ."' class='edit_data'><span class='glyphicon glyphicon-pencil' aria-hidden='true' title='Edit Record' data-toggle='tooltip'></span></a>";
        echo "<a id='". $row['id'] ."' class='delete_data'><span class='glyphicon glyphicon-trash' aria-hidden='true' title='Delete Record' data-toggle='tooltip'></span></a>";
      echo "</td>";
    echo "</tr>";
  }
} else {
  echo "ERROR: Could not execute $sql. " .mysqli_error($link);
}
