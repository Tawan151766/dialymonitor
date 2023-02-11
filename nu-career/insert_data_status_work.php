<?php
session_start();
include 'db_io.php';
$student_code = $_SESSION['std_id'];

$statement = $connection->prepare("UPDATE `d_students` 
SET `workstatus_id` = :workstatus_id 
WHERE `d_students`.`std_id` = '$student_code';");

$result = $statement->execute(
  array(

    // ':student_code'        => $_POST["student_code"],
    ':workstatus_id'        => $_POST["workstatus_id"]
  )

);

$errorG = $statement->errorInfo();

if ($errorG[2] == "") {

  header("Location:index.php?page=new");
  

} else {

  echo 'Data NOT Updated' . " " . $errorG[2];

}
?>