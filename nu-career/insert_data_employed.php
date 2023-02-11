<?php
session_start();
include 'db_io.php';
$student_code = $_SESSION['std_id'];

$statement = $connection->prepare("INSERT INTO `job_application_work` (`job_application_id`, ` std_id`, `src_job_id`, `d_occup_type`, `talent_id`, `possition_id`, `worktype_id`, `salary_id`, `work_satisfy_id`, `time_findwork_id`, `match_edu_id`, `apply_edu_id`, `desire_study_id`) 
VALUES 
(NULL,
':std_id',
':src_job_id',
':occup_type_id',
':talent_id',
':possition_id',
':salary_id',
':work_satisfy_id',
':time_findwork_id',
':match_edu_id',
':apply_edu_id',
':desire_study_id'");




$result = $statement->execute(
  array(

    
    // ':student_code'        => $_POST["student_code"],
    ':std_id'        => $student_code,
    ':src_job_id'        => $_POST["src_job_id"],
    ':occup_type_id'        => $_POST["occup_type_id"],
    ':talent_id'        => $_POST["talent_id"],
    ':possition_id'        => $_POST["possition_id"],
    ':salary_id'        => $_POST["salary_id"],
    ':work_satisfy_id'        => $_POST["work_satisfy_id"],
    ':time_findwork_id'        => $_POST["time_findwork_id"],
    ':match_edu_id'        => $_POST["match_edu_id"],
    ':apply_edu_id'        => $_POST["apply_edu_id"],
    ':desire_study_id'        => $_POST["desire_study_id"]
  )

);

$errorG = $statement->errorInfo();

if ($errorG[2] == "") {

  header("Location:index.php?page=new");
  

} else {

  echo 'Data NOT Updated' . " " . $errorG[2];

}
?>