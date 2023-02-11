<?php
session_start();
include 'db_io.php';
$student_code = $_SESSION['student_code'];

$statement = $connection->prepare("INSERT INTO `suggestions` (`student_code`, `form_id`, `facilitate`, `courses`, `learning`, `development_activites`, `knowledge`, `skill_process`, `reflection_behavior`) 
VALUES ($student_code, NULL,:facilitate, :courses, :learning, :development_activites, :knowledge, :skill_process, :reflection_behavior);");

$result = $statement->execute(
  array(

    
    // ':student_code'        => $_POST["student_code"],
    ':facilitate'        => $_POST["facilitate"],
    ':courses'        => $_POST["courses"],
    ':learning'        => $_POST["learning"],
    ':development_activites'        => $_POST["development_activites"],
    ':knowledge'        => $_POST["knowledge"],
    ':skill_process'        => $_POST["skill_process"],
    ':reflection_behavior'        => $_POST["reflection_behavior"]
  )

);

$errorG = $statement->errorInfo();

if ($errorG[2] == "") {

  header("Location:index.php?page=new");
  

} else {

  echo 'Data NOT Updated' . " " . $errorG[2];

}
?>