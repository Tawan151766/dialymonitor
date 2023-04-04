<?php
$categoryid = $_POST['categoryid'];
$categoryname = $_POST['categoryname'];
include 'connectdb.php';
$sql = "UPDATE `category2` SET `category2_name` = '$categoryname' WHERE `category2`.`category2_id` = $categoryid;";

if (mysqli_query($connection, $sql)) {
  header("Location:manage_cate.php?page=new");
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($connection);
}
?>