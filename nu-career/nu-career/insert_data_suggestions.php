<?php
session_start();
include 'db_io.php';
$student_code = $_SESSION['std_id'];

$statement = $connection->prepare("INSERT INTO `qt_suggestion` (`std_id`, `qt_suggestion_id`, `facilitate_id`, `courses`, `learning`, `development_activites`, `knowledge`, `skill_process`, `reflection_behavior`)
VALUES ($student_code, NULL,:facilitate_id, :courses, :learning, :development_activites, :knowledge, :skill_process, :reflection_behavior);");

$result = $statement->execute(
  array(

    
    // ':student_code'        => $_POST["student_code"],
    ':facilitate_id'        => $_POST["facilitate_id"],
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