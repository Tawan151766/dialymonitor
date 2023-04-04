<?php
$id = $_GET['id'];
include 'connectdb.php';
$sql = "DELETE FROM category1 WHERE `category1`.`category1_id` = $id";

if (mysqli_query($connection, $sql)) {
  header("Location:manage_cate.php?page=new");
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($connection);
}
?>