<?php
$id = $_GET['id'];
include 'connectdb.php';
$sql = "DELETE FROM dailymonitor WHERE `dailymonitor`.`subject_id`  = $id";

if (mysqli_query($connection, $sql)) {
  header("Location:dailymonitor.php?page=new");
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($connection);
}
?>