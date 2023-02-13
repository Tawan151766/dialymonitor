<?php
session_start();
include 'connectdb.php';
 $student_code = $_SESSION['std_id'];
 // ':student_code'        => $_POST["student_code"],
 $lev_edu_id = $_POST["lev_edu_id"];
 $major_ID = $_POST["major_ID"];
 $type_univ_id = $_POST["type_univ_id"];
 $cause_edu_id = $_POST["cause_edu_id"];
 $prob_edu_id = $_POST["prob_edu_id"];

$sql = "INSERT INTO `qt_future_study` (`qt_future_study_id`, `std_id`, `lev_edu_id`, `major_ID`, `type_univ_id`, `cause_edu_id`, `prob_edu_id`) VALUES (NULL, '$student_code' , '$lev_edu_id' , '$major_ID', '$type_univ_id', '$cause_edu_id', '$prob_edu_id');";
$qry = mysqli_query($connection,$sql);

if ($qry) {
  header("Location:index.php?page=new");
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($connection);
}
?>