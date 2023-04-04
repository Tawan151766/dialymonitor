<?php
$id = $_GET['id'];
include 'connectdb.php';
$sql = "DELETE FROM category2 WHERE `category2`.`category2_id` = $id";

if (mysqli_query($connection, $sql)) {
  header("Location:manage_cate.php?page=new");
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($connection);
}
?>