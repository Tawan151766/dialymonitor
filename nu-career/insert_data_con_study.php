<?php
session_start();
include 'db_io.php';
$student_code = $_SESSION['student_code'];


$statement = $connection->prepare("INSERT INTO `further_study` (`student_code`, `form_id`, `degree_edu`, `major_edu`, `university_type`, `continuing_study`, `continuing_study_problem`,`answer_continuing_study_problem`) 
VALUES ($student_code, NULL, :degree_edu,:major_edu,:university_type,:continuing_study,:continuing_study_problem,:answer_continuing_study_problem);");

$result = $statement->execute(
  array(

    // ':student_code'        => $_POST["student_code"],
    ':degree_edu'        => $_POST["degree_edu"],
    ':major_edu'        => $_POST["major_edu"],
    ':university_type'        => $_POST["university_type"],
    ':continuing_study'        => $_POST["continuing_study"],
    ':continuing_study_problem'        => $_POST["continuing_study_problem"],
    ':answer_continuing_study_problem'        => $_POST["answer_continuing_study_problem"]
  )

);

$errorG = $statement->errorInfo();

if ($errorG[2] == "") {

  header("Location:index.php?page=new");
  

} else {

  echo 'Data NOT Updated' . " " . $errorG[2];

}
?>