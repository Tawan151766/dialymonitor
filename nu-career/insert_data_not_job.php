<?php
session_start();
include 'db_io.php';
$student_code = $_SESSION['student_code'];

$statement = $connection->prepare("INSERT INTO `has_not_job` (`student_code`, `form_id`, `why_no_job`, `problem_src_job`, `why_problem_src_job`, `country_job`, `desired_position`, `dev_skills`, `reval_infomation`, `reval_infomation_yes`, `fur_study`) 
VALUES ($student_code,null, :why_no_job, :problem_src_job, :why_problem_src_job, :country_job, :desired_position, :dev_skills, :reval_infomation, :reval_infomation_yes, :fur_study)");

$result = $statement->execute(
  array(

    
    // ':student_code'        => $_POST["student_code"],
    ':why_no_job'        => $_POST["why_no_job"],
    ':problem_src_job'        => $_POST["problem_src_job"],
    ':why_problem_src_job'        => $_POST["why_problem_src_job"],
    ':country_job'        => $_POST["country_job"],
    ':desired_position'        => $_POST["desired_position"],
    ':dev_skills'        => $_POST["dev_skills"],
    ':reval_infomation'        => $_POST["reval_infomation"],
    ':reval_infomation_yes'        => $_POST["reval_infomation_yes"],
    ':fur_study'        => $_POST["fur_study"]
  )

);

$errorG = $statement->errorInfo();

if ($errorG[2] == "") {

  header("Location:index.php?page=new");
  

} else {

  echo 'Data NOT Updated' . " " . $errorG[2];

}
?>