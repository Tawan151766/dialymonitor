<?php
$categoryid = $_POST['categoryid'];
$categoryname = $_POST['categoryname'];
include 'connectdb.php';
$sql = "UPDATE `category1` SET `category1_name` = '$categoryname' WHERE `category1`.`category1_id` = $categoryid;";

if (mysqli_query($connection, $sql)) {
  header("Location:manage_cate.php?page=new");
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($connection);
}
?>