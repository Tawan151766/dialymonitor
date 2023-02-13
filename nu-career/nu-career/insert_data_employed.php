<?php
session_start();
include 'connectdb.php';
 $student_code = $_SESSION['std_id'];
 $src_job_id = $_POST["src_job_id"];
 $occup_type_id = $_POST["occup_type_id"];
 $talent_id = $_POST["talent_id"];
 $possition_id = $_POST["possition_id"];
 $salary_id = $_POST["salary_id"];
 $work_satisfy_id = $_POST["work_satisfy_id"];
 $time_findwork_id = $_POST["time_findwork_id"];
 $match_edu_id = $_POST["match_edu_id"];
 $apply_edu_id = $_POST["apply_edu_id"];
 $desire_study_id = $_POST["desire_study_id"];
 $worktype_id = $_POST["worktype_id"];




 $add_name = $_POST["add_name"];
 $workplace_tel = $_POST["workplace_tel"];
 $workplace_fax = $_POST["workplace_fax"];
 $workplace_email = $_POST["workplace_email"];
 $workplace_number = $_POST["workplace_number"];
 $village_number = $_POST["village_number"];
 $building_name = $_POST["building_name"];
 $floor = $_POST["floor"];
 $alley_or_ane = $_POST["alley_or_ane"];
 $street_name = $_POST["street_name"];
 $province_id = $_POST["province_id"];
 $amphure_id = $_POST["amphure_id"];
 $districts_id = $_POST["districts_id"];

$sql = "INSERT INTO `job_application_work` (`job_application_id`, `	std_id`, `src_job_id`, `occup_type_id`, `talent_id`, `possition_id`, `worktype_id`, `salary_id`, `work_satisfy_id`, `time_findwork_id`, `match_edu_id`, `apply_edu_id`, `desire_study_id`) VALUES (NULL, '$student_code', '$src_job_id', '$occup_type_id', '$talent_id', '$possition_id', '$worktype_id','$salary_id', '$work_satisfy_id', '$time_findwork_id', '$match_edu_id', ' $apply_edu_id', '$desire_study_id');";
$qry = mysqli_query($connection,$sql);

$sql1 = "INSERT INTO `d_addr_workplace` (`add_wp_ID`, `std_ID`, `add_name`, `workplace_tel`, `workplace_fax`, `workplace_email`, `workplace_number`, `village_number`, `building_name`, `floor`, `alley_or_ane`, `street_name`, `province_id`, `amphure_id`, `districts_id`) VALUES (NULL,'$student_code','$add_name','$workplace_tel','$workplace_fax', '$workplace_email','$workplace_number','$village_number','$building_name','$floor','$alley_or_ane','$street_name','$province_id', '$amphure_id', '$districts_id');";
$qry1 = mysqli_query($connection,$sql1);
if ($qry && $qry1 ) {
  header("Location:index.php?page=new");
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($connection);
  echo "Error: " . $sql1 . "<br>" . mysqli_error($connection);
}
?>
