<?php
session_start();
include 'db_io.php';
$student_code = $_SESSION['student_code'];


$statement = $connection->prepare("INSERT INTO `students` (`student_code`, `student_name`, `gender`, `program`, `date_birth`, `Current_work_status`, `id_card`) 
VALUES (:student_code, :student_name, :gender, :program, :date_birth, '', :id_card);");

$result = $statement->execute(
  array(

    // ':student_code'        => $_POST["student_code"],
    ':student_code'        => $_POST["student_code"],
    ':student_name'        => $_POST["student_name"],
    ':gender'        => $_POST["gender"],
    ':program'        => $_POST["program"],
    ':date_birth'        => $_POST["date_birth"],
    ':id_card'        => $_POST["id_card"]
  )

);

$errorG = $statement->errorInfo();

if ($errorG[2] == "") {

  echo 'Success';
  

} else {

  echo 'Data NOT Updated' . " " . $errorG[2];

}
?>