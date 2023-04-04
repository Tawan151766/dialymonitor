<?php
$category1_id = $_POST['category1_id'];
$categoryname = $_POST['categoryname'];
include 'connectdb.php';
$sql = "INSERT INTO `category2` (`category2_id`, `category2_name`,`category1_id`) VALUES (NULL, '$categoryname',$category1_id);";

if (mysqli_query($connection, $sql)) {
  header("Location:manage_cate.php?page=new");
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($connection);
}
?>