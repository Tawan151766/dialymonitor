<?php
$categoryname = $_POST['categoryname'];
include 'connectdb.php';
$sql = "INSERT INTO `category1` (`category1_id`, `category1_name`) VALUES (NULL, '$categoryname');";

if (mysqli_query($connection, $sql)) {
  header("Location:manage_cate.php?page=new");
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($connection);
}
?>