<?php
session_start();
include 'db_io.php';
$student_code = $_SESSION['std_id'];

$statement = $connection->prepare("INSERT INTO `qt_not_work` (`qt_not_work_id`, `std_id`, `cause_nowork_id`, `prob_findwork_id`, `desired_position`, `dev_skills`, `disclosure_agree_id`, `desire_study_id`) 
VALUES (NULL,$student_code, :cause_nowork_id, :prob_findwork_id, :desired_position, :dev_skills, :disclosure_agree_id, :desire_study_id)");

$result = $statement->execute(
  array(

    
    // ':student_code'        => $_POST["student_code"],
    ':cause_nowork_id'        => $_POST["cause_nowork_id"],
    ':prob_findwork_id'        => $_POST["prob_findwork_id"],
    ':desired_position'        => $_POST["desired_position"],
    ':dev_skills'        => $_POST["dev_skills"],
    ':disclosure_agree_id'        => $_POST["disclosure_agree_id"],
    ':desire_study_id'        => $_POST["desire_study_id"],
  )

);

$errorG = $statement->errorInfo();

if ($errorG[2] == "") {

  header("Location:index.php?page=new");
  

} else {

  echo 'Data NOT Updated' . " " . $errorG[2];

}
?>